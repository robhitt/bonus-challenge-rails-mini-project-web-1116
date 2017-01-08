class ManagersController < ApplicationController
  before_action :mgr, only: [:show, :edit, :update, :destroy]

  def index
    @managers = Manager.all
  end

  def new
    @manager = Manager.new
    @offices = Office.all
    @bands = Band.all
  end

  def create
    @manager = Manager.new(manager_params)
    session[:manager_id] = @manager.id

    if @manager.save
      redirect_to managers_path
    else
      flash[:message] = "Username already taken"
      redirect_to new_manager_path
    end
  end

  def show
    @bands = @manager.bands
  end

  def edit
    @offices = Office.all
    @bands = Band.all

  end

  def update
    if @manager.update(manager_params)
      redirect_to manager_path(@manager)
    else
      flash[:message] = "Username already taken"
      redirect_to edit_manager_path(@manager)
    end
  end

  def destroy
    @manager.destroy
    redirect_to managers_path
  end



  private

  def manager_params
    params.require(:manager).permit(:first_name, :last_name, :street, :apt, :city, :state, :zip, :office_id, :ext, :email, :phone, :username, :password)
  end

  def mgr
    @manager = Manager.find(params[:id])
  end
end
