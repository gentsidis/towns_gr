class Region < ApplicationRecord
	has_many :prefectures
	has_many :regional_unities
end
