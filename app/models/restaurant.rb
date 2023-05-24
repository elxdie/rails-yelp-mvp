class Restaurant < ApplicationRecord
  # for database as restaurant has many reviews
  has_many :reviews
end
