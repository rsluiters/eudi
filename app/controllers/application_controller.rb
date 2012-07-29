class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authenticate_user!

  helper_method :current_user

private

  def authenticate_user!
    unless session[:user_id]
      redirect_to new_session_path
    end  
  end

  def only_admin
    unless current_user and current_user.role == User::ROLE_ADMIN
      redirect_to new_session_path
    end  
  end

  def only_teacher
    unless current_user and (current_user.role == User::ROLE_ADMIN
                        or current_user.role == User::ROLE_TEACHER)
      redirect_to new_session_path
    end  
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end


  
end
