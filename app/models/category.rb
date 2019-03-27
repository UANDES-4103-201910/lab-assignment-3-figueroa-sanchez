class Category < ApplicationRecord
  has_many :ticket_types
end
