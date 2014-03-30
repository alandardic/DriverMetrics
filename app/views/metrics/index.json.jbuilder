json.array!(@drivers) do |driver|
  json.extract! driver, :id, :name, :phone_number, :joined_on, :image_file_name
  json.url driver_url(driver, format: :json)
end
