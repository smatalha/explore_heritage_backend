class Site < ApplicationRecord
  belongs_to :category
  belongs_to :region
  belongs_to :country
  has_many :comments
  # delegate :users, to: :comments
  has_many :wish_lists
  # delegate :users, t0: :wish_lists
end
