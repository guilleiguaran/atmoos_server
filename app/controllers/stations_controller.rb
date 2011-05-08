class StationsController < ApplicationController
  respond_to :json, :html

  def index
    @stations = Station.all
    respond_with(@stations) do |format|
      format.html
      format.json { render :json => @stations }
      # format.xml  { render :xml  => @stations }
      # format.any  { render :text => "only HTML, XML, and JSON format are supported at the moment." }
    end
  end

  def show
    @station = Station.where(:id => params[:id])
    respond_with(@station) do |format|
      format.html
      format.json { render :json => @station }
      # format.xml  { render :xml  => @station }
      # format.any  { render :text => "only HTML, XML, and JSON format are supported at the moment." }
    end
  end
end
