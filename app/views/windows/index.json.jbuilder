json.array!(@windows) do |window|
  json.extract! window, :id
  json.url window_url(window, format: :json)
end
