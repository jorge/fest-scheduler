json.array!(@bands) do |band|
  json.extract! band, :id, :index, :show
  json.url band_url(band, format: :json)
end
