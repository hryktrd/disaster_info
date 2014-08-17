json.array!(@needs) do |need|
  json.extract! need, :id, :thing, :status, :area_id
  json.url need_url(need, format: :json)
end
