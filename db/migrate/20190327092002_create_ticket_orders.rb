class CreateTicketOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_orders do |t|
      t.references :User
      t.references :TicketType
      t.integer :total_amount

      t.timestamps
    end
  end
end
