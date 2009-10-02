class Post < ActiveRecord::Base
  serialize :body
  validates_presence_of :body

  protected

  # Defines synthetic accessor methods which actually store into the body hash.
  #
  # Example:
  #   class AcmeWidget
  #     body_attr_accessor :part_number, :description
  #     ...
  #   end
  #
  def self.body_attr_accessor(*names)
    names.each do |name|
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
end
