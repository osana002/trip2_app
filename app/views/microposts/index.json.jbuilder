json.array!(@micropost) do |microposts|
  json.extract! microposts, :user_id, :spot_name, :spot_address, :content, :picture
  json.url microposts_url(microposts, format: :json)
end