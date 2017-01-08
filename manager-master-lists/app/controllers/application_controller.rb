class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

#   unless  ActionController::Base.consider_all_requests_local
#   rescue_from Exception, :with => :render_404
# end
#
# private
#
#   def render_404
#     render :template => 'error_pages/404', :layout => false, :status => :not_found
#   end
helper_method :current_manager, :logged_in

  def current_manager
    @current_manager ||= Manager.find(session[:manager_id])
  end

  def logged_in?
    !!session[:manager_id]
  end

  def authenticate_manager
    if !logged_in?
      flash[:notice] = "You must be logged in to view this"
      redirect_to signin_path
    end
  end 

  def index
    @offices = Office.all
    @band_members = BandMember.all
    @bands = Band.all
    @managers = Manager.all
  end


end
