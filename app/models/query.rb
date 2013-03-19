class Query < ActiveRecord::Base
  attr_accessible :dest_lat, :dest_lon, :from, :origin_lat, :origin_lon, :to
end
