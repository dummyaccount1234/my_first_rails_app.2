json.array!(@widgets) do |widget|
  json.extract! widget, :id, :user_id, :color_id, :price, :active, :combo_pack_id
  json.url widget_url(widget, format: :json)
end
