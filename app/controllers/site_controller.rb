class SiteController < ApplicationController

  def home
    @stations = Station.where('latitude <> 0 AND longitude <> 0')
  end

  def search
    @station = Station.near("#{params[:user][:zip_code]}, Espana").first
  end
end
