class SessionsController < ApplicationController

  skip_before_filter :authenticate_user!, :except => :destroy
    
  def new #Login form
  end
  
  def create #login with data given in form
    
    #TODO: Check case insensitive (also in model uniqueness must be case insensitive)
    user=User.find_by_email(params[:user][:email])
    if user and user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to root_path, :notice => "Anmeldung erfolgreich"
      
    else
      redirect_to new_session_path, :alert => "Benutzer nicht gefunden oder falsches Passwort."
    end
  end
  
  def destroy #logout
    reset_session
    redirect_to new_session_path, :notice => "Abmeldung erfolgreich."
  end
end
