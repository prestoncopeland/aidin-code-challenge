json.array!(@providers) do |provider|
  json.extract! provider, :id, :name, :address, :description, :latitude, :longitude
  json.url provider_url(provider, format: :json)
end
