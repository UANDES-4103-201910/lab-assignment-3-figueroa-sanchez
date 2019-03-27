class Order < ApplicationRecord
  belongs_to :User, optional:true
  has_many :tickets
end
