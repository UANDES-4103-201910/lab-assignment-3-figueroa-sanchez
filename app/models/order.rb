class Order < ApplicationRecord
  belongs_to :User, optional:true
end
