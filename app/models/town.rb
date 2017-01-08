class Town < ApplicationRecord	
  belongs_to :section
  belongs_to :kap_city
end
