class CreateTicketTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_types do |t|
      t.references :Event
      t.integer :price
      t.references :Category

      t.timestamps
    end
  end
end
