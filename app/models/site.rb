class Site < ApplicationRecord
  belongs_to :category
  belongs_to :region
  belongs_to :country
end
