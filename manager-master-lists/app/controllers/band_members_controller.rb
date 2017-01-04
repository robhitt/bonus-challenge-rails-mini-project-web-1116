class BandMembersController < ApplicationController
  before_action :band_member, only: [:show, :edit, :update, :destroy]

  def index
    @band_members = BandMember.all
  end

  def new
    @band_member = BandMember.new
    @bands = Band.all
  end

  def create
    @band_member = BandMember.new(band_member_params)

    if @band_member.save
      redirect_to band_members_path
    else
      render :new
    end
  end

  def show
    @band = @band_member.band
  end

  def edit
    @bands = Band.all

  end

  def update
    if @band_member.update(band_member_params)
      redirect_to band_member_path(@band_member)
    else
      render :edit
    end
  end

  def destroy
    @band_member.destroy
    redirect_to band_members_path
  end

  private

  def band_member_params
    params.require(:band_member).permit(:first_name, :last_name, :street, :apt, :city, :state, :zip, :instrument, :email, :phone, :notes, :band_id, :birthday)
  end

  def band_member
    @band_member = BandMember.find(params[:id])
  end
end
