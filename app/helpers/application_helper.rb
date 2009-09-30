# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def m(markdown)
    BlueCloth.new(markdown).to_html
  end

  def logged_in?
    session[:logged_in]
  end
end
