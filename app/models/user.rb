class User < ApplicationRecord
  has_many :orders

  def most_expensive_ticket_bought
    orders = Order.where(user_id:self.id)
    ticket_orders = Ticket.where(order_id:orders.ids)
    most_expensive_price = 0
    for element in ticket_orders do
      most_expensive_price = element.price if element.price > most_expensive_price
    end
    most_expensive_price
  end

  def most_expensive_ticket_bought_between(start_date, end_date)
    orders = Order.where(user_id:self.id)
    ticket_orders = Ticket.where(order_id:orders.ids)
    most_expensive_price = 0
    for element in ticket_orders do
      most_expensive_price = element.price if element.price > most_expensive_price and element.created_at>start_date and element.created_at<end_date
    end
    most_expensive_price
  end

  def last_event
    orders_user=Order.where(user_id: self.id).select(:id)
    events_user = Ticket.where(order_id: orders_user).select(:event_id)
    last_event = Event.where(id:events_user).order(date: :desc).first
  end
end
