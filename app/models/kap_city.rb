class KapCity < ApplicationRecord
  belongs_to :prefecture
  has_many :towns
end
