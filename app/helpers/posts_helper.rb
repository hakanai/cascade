module PostsHelper
  def post_flavour_choices
    # Hard-coded for now, wants to be extensible later with post flavours stored in db.
    { 'Quip' => 'quip' }
  end

  def edit_path(post)
    self.send("edit_#{post.class.name.tableize.singularize}_path", post)
  end
end
