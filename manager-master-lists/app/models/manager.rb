class Manager < ApplicationRecord
  belongs_to :office
  has_many :band_managers
  has_many :bands, through: :band_managers


  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def city_state_zip
    "#{self.city}, #{self.state} #{self.zip}"
  end

  def maps_url
    # make https://www.google.com/maps/place/214+N+11th+St,+Brooklyn,+NY+11211
    "https://www.google.com/maps/place/" + "#{space_for_plus_sub(self.street)}" + "+#{self.city}" + "+#{self.state}" + "+#{self.zip}"
  end

  def space_for_plus_sub(street)
    street.gsub(" ", "+")
  end
end
