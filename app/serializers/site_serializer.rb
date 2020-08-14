class SiteSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_inscribed, :justification, :image_url, :location, :http_url, :short_description, :danger, :visited, :latitude, :longitude, :country, :category, :region, :comments
  # has_one :country
  # has_one :category
  # has_one :region
end

