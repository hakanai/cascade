class Post < ActiveRecord::Base
  serialize :body
  validates_presence_of :body

  protected

  def body
    self['body'] ||= {}
    super
  end
end
