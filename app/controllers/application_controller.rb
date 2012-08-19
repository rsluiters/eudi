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
    unless current_user and current_user.is_admin
      render '403.html' 
#      render :status => :forbidden
    end  
  end

  def only_teacher
    unless current_user and (current_user.is_teacher)
      render :file => "#{Rails.root}/public/403.html", :status => 403, :layout => false
#      render :status => :forbidden
    end  
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end


  
end
