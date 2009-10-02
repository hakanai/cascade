class Post < ActiveRecord::Base
  serialize :body
  validates_presence_of :body

  protected

  def self.body_attr_accessor(name)

    # Synthetic getter
    define_method(name) do
      self.body ? self.body[name] : nil
    end

    # Synthetic setter
    define_method("#{name}=".to_sym) do |value|
      self.body ||= {}
      self.body[name] = value
    end

    # Additional stuff to make ActiveRecord happier.
    alias_method("#{name}_before_type_cast".to_sym, name)
  end
end
