json.extract! listing, :id, :address, :rent, :sqft, :bedrooms, :bathrooms, :created_at, :updated_at
json.url listing_url(listing, format: :json)
