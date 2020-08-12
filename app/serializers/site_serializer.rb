class SiteSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_inscribed, :justification, :image_url, :location, :http_url, :short_description, :danger, :visited, :latitude, :longitude, :country, :category, :region
end

