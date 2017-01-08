class SessionsController < ApplicationController
  def new
    @manager = Manager.new
  end

  def create
    @manager = Manager.find_by(username: params[:manager][:username])

    if @manager && @manager.authenticate(params[:manager][:password])
      session[:manager_id] = @manager.id
      redirect_to @manager
    else
      flash[:notice] = 'Username or password was incorrect'
      redirect_to '/signin'
    end
  end


  def destroy
    session[:manager_id] = nil

    redirect_to '/'
  end
end


#if logged in as a manager
## you should only see your bands & band member pages

#if not logged in
## you should not be able to edit info



#upload passport photos, etc. with encryption
