require 'nokogiri'
require 'open-uri'

namespace :stations do
  task :load => :environment do
    puts "Loading stations's statuses..."
    sts = load_stations

    puts "Storing status information..."
    save_stations(sts)
  end
end

def load_stations
  url = "http://www.gobiernodecanarias.org/cmayot/calidadaire/CargaIcaXZona.do"

  zones = {
    "8" => "La Palma - La Gomera - El Hierro",
    "5" => "Lanzarote - Fuerteventura",
    "3" => "Las Palmas de GC",
    "7" => "Norte de Gran Canaria",
    "6" => "Norte de Tenerife",
    "1" => "Sta Cruz-La Laguna",
    "4" => "Sur de Gran Canaria",
    "2" => "Sur de Tenerife"
  }

  stations = {}

  zones.each do |id, value|
    tries = 1
    begin
      raw_xml = open("#{url}?zona=#{id}&ids=#{rand}")
    rescue
      tries += 1
      retry unless tries > 2
      puts "Could not load information for zone ID:#{id}, NAME:#{value}"
      next
    end
    doc = Nokogiri::XML(raw_xml)

    doc.xpath("//ica").each do |node|
      station_id = node.xpath(".//ides").text
      unless stations[station_id]
        stations[station_id] = {
          'name' => node.xpath(".//nombreEstacion").text
        }
      end

      stations[station_id]['params'] = [] unless stations[station_id]['params']
      stations[station_id]['params'].push({
        'idai'            => node.xpath(".//idai").text,
        'cana'            => node.xpath(".//cana").text,
        'nombreParametro' => node.xpath(".//nombreParametro").text,
        'valorTexto'      => node.xpath(".//valorTexto").text,
        'valorNumerico'   => node.xpath(".//valorNumerico").text,
        'color'           => node.xpath(".//color").text
      })
    end
  end

  stations
end

def save_stations(stations)
  puts stations.inspect
end