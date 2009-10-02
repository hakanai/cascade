class Link < Post
  body_attr_accessor :url
  body_attr_accessor :title

  validates_presence_of :url, :title
end
