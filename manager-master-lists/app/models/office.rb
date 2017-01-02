class Office < ApplicationRecord
  has_many :managers

  include Addressable

end
