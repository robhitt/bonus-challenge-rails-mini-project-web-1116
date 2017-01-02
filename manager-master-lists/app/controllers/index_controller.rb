class IndexController < ActionController::Base

  def index
    @offices = Office.all
    @band_members = BandMember.all
    @bands = Band.all
    @managers = Manager.all
  end
end
