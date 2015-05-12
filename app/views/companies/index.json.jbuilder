json.array!(@companies) do |company|
  json.extract! company, :id, :name, :address, :postcode, :city, :country, :phone, :vat_id
  json.url company_url(company, format: :json)
end
