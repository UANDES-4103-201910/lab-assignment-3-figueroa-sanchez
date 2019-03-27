class User < ApplicationRecord
  has_many :orders

  def most_expensive_ticket_bought
    ticket_orders = Ticket.find_by(User_id:self.id)
    most_expensive_price = 0
    for ticket in ticket_orders
      ticket_type = Ticket.find(id:ticket.id)
      most_expensive_price = ticket_type.price if ticket_type.price > most_expensive_price
    end
    most_expensive_price
  end

  def most_expensive_ticket_bought_between(start_date, end_date)
    ticket_orders = Ticket.find_by(User_id:self.id)
    most_expensive_price = 0
    for ticket in ticket_orders
      ticket_type = Ticket.where(id:ticket.id)
      most_expensive_price = ticket_type.price if ticket_type.price > most_expensive_price and ticket.created_at>start_date and ticket.created_at<end_date
    end
    most_expensive_price
  end

  def last_event

  end
end
