class Section < ApplicationRecord
  belongs_to :kal_city
  has_many :towns
end
