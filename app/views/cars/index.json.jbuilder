json.array!(@cars) do |car|
  json.extract! car, :id, :top_speed, :window_id
  json.url car_url(car, format: :json)
end
