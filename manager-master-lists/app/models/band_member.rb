class BandMember < ApplicationRecord
  belongs_to :band
  has_many :band_managers, through: :bands
  has_many :managers, through: :band_managers

  include Addressable

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  



end
