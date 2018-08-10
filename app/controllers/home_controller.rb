class HomeController < ApplicationController
  include UsersHelper

  def index
  end

  def login
    if request.post?
      user = User.find_by(email: params[:Login][:email].downcase)
      if user && user.authenticate(params[:Login][:password])
        log_in user
        redirect_to users_path
      else
        flash.now[:danger] = 'Invalid email/password combination'
      end
    end

  end

  def logout
  end
end
