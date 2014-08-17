json.array!(@situations) do |situation|
  json.extract! situation, :id, :text, :status, :area_id
  json.url situation_url(situation, format: :json)
end
