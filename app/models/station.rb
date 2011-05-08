class Station < ActiveRecord::Base
  reverse_geocoded_by :latitude, :longitude

  def air_status
    params_statuses = [so2, no2, particles, o3]
    return "bad" if params_statuses.include?("Mala")
    return "regular" if params_statuses.include?("Regular")
    return "good" if params_statuses.include?("Buena")
    "off"
  end
end
