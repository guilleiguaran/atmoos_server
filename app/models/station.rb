class Station < ActiveRecord::Base
  geocoded_by :latitude  => :latitude, :longitude => :longitude
  reverse_geocoded_by :latitude, :longitude

end
