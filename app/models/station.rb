class Station < ActiveRecord::Base
  reverse_geocoded_by :latitude, :longitude
end
