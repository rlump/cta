json.array!(@bus_boardings) do |bus_boarding|
  json.extract! bus_boarding, :stop_id, :on_street, :cross_street, :routes, :boardings, :alightings, :month_beginning, :daytype, :longitude, :latitude
  json.url bus_boarding_url(bus_boarding, format: :json)
end
