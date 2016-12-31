class OfficesController < ApplicationController
  before_action :find_id, only: [ :edit, :update, :destroy]

  def employees
    @offices = Office.all
  end


  def index
    @offices = Office.all
  end

  def new
    @office = Office.new
  end


  def create
    @office = Office.create(office_params)
    redirect_to offices_path
  end

  def show
    @office = Office.find(params[:id])
  end

  def edit
  end

  def update
    @office.update(office_params)
    redirect_to office_path(@office)
  end

  def destroy
    @office.destroy
    redirect_to offices_path
  end

  private

  def office_params
    params.require(:office).permit(:name, :street, :suite, :city, :state, :zip, :fax, :phone)
  end

  def find_id
    @office = Office.find(params[:id])
  end
end
