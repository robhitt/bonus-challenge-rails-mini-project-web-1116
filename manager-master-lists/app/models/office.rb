class Office < ApplicationRecord
  has_many :managers

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
