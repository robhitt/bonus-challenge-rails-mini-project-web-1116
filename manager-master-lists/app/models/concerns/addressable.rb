module Addressable

  def city_state_zip
    if self.street != nil
      "#{self.city}, #{self.state} #{self.zip}"
    end
  end

  def maps_url
    # make https://www.google.com/maps/place/214+N+11th+St,+Brooklyn,+NY+11211
    #binding.pry
    if self.street != nil
      "https://www.google.com/maps/place/" + "#{space_for_plus_sub(self.street)}" + "+#{self.city}" + "+#{self.state}" + "+#{self.zip}"
    end
  end

  def space_for_plus_sub(street)
    street.gsub(" ", "+")
  end

end
