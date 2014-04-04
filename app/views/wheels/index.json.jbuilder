json.array!(@wheels) do |wheel|
  json.extract! wheel, :id, :car_id
  json.url wheel_url(wheel, format: :json)
end
