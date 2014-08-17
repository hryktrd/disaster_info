json.array!(@areas) do |area|
  json.extract! area, :id, :name, :address, :tel, :lat, :lng
  json.url area_url(area, format: :json)
end
