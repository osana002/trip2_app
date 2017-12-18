json.id(user.id)
json.name(user.name)

json.microposts do
    jsonarray!(user.microposts) do |micropost|
        json.partial!(micropost)
    end
end