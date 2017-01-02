class Band < ApplicationRecord
  has_many :band_members
  has_many :band_managers
  has_many :managers, through: :band_managers

  include Addressable

  def followers
     spotify_info.followers["total"]
  end

  def band_image
    spotify_info.images[0]["url"]
  end

  def spotify_url
    spotify_info.external_urls["spotify"]
  end

  def self.display_date
    t = Time.now
    t.strftime('%m/%d/%Y')
  end

  def spotify_info
      RSpotify::Artist.search("#{self.name}").first
  end

end
