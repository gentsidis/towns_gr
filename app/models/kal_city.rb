class KalCity < ApplicationRecord
  belongs_to :regional_unity
  has_many :sections
end
