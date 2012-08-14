class UsersController < ApplicationController

  before_filter :only_teacher, :except => :show

  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
    @user.role ||= User::ROLE_USER
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Benutzer wurde erfolgreich erstellt.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'Benutzer wurde erfolgreich angepasst.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
  
  
# Try:
# http://www.dixis.com/?p=634
#  def certificate
#    @user = User.find(params[:id])
#    respond_to do |format|
#      format.pdf do
#        pdf = PDF::Writer.new
#        
#        pdf.text ["Urkunde"], :font_size => 72, :justification => :center
#        pdf.fill_color  Color::RGB::Blue
#        pdf.text ["#{@user.name}"], :font_size => 48, :justification => :center
#        pdf.text ["","#{@user.points} Punkte"], :font_size => 32, :justification => :center
##        df.text [@user.name]
#        send_data pdf.render, :filename => 'urkunde.pdf', :type => 'application/pdf', :disposition => 'inline'
#      end
#    end
#  end


  
end
