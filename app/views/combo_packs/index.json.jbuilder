json.array!(@combo_packs) do |combo_pack|
  json.extract! combo_pack, :id, :user_id
  json.url combo_pack_url(combo_pack, format: :json)
end
