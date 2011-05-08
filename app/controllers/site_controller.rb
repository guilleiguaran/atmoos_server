class SiteController < ApplicationController

  def home
    @stations = Station.where('latitude <> 0 AND longitude <> 0')
  end

  def search
    @station = Station.near('35017, Espana').first
  end
end
