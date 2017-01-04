class ManagersController < ApplicationController
  before_action :mgr, only: [:show, :edit, :update, :destroy]

  def index
    @managers = Manager.all
  end

  def new
    @manager = Manager.new
    @offices = Office.all
  end

  def create
    @manager = Manager.new(manager_params)
    if @manager.save
      redirect_to managers_path
    else
      render :new
    end
  end

  def show
    @bands = @manager.bands
  end

  def edit
    @offices = Office.all

  end

  def update
    if @manager.update(manager_params)
      redirect_to manager_path(@manager)
    else
      render :edit
    end
  end

  def destroy
    @manager.destroy
    redirect_to managers_path
  end



  private

  def manager_params
    params.require(:manager).permit(:first_name, :last_name, :street, :apt, :city, :state, :zip, :office_id, :ext, :email, :phone)
  end

  def mgr
    @manager = Manager.find(params[:id])
  end
end
