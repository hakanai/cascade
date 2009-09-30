class Quip < Post
  def text
    body[:text]
  end
  def text=(text)
    body[:text] = text
  end
  alias :text_before_type_cast :text

  validates_presence_of :text
end
