class Occupancy < ActiveRecord::Base
  belongs_to :shelf
  belongs_to :occupancy
end
