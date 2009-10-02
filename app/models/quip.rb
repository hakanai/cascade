class Quip < Post
  body_attr_accessor :text

  validates_presence_of :text
end
