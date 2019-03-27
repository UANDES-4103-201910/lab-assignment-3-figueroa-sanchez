class Ticket < ApplicationRecord
  belongs_to :Category, optional:true
  belongs_to :Event, optional:true
  belongs_to :Order, optional:true
end
