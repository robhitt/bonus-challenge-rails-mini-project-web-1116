class Band < ApplicationRecord
  has_many :band_managers
  has_many :managers, through: :band_managers
end
