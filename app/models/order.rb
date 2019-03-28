class Order < ApplicationRecord
  belongs_to :User
  has_many :tickets
end
