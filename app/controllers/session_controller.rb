class SessionController < ApplicationController
  def login
    if request.post?
      if params[:password] == SECRET_PASSWORD
        session[:logged_in] = true
        redirect_to root_path
      else
        flash[:error] = 'Wrong password.'
      end
    end
  end

  def logout
    session.delete(:logged_in)
    redirect_to root_path
  end
end
