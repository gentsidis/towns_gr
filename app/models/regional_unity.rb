class RegionalUnity < ApplicationRecord
  belongs_to :region
  has_many :kal_cities
end
