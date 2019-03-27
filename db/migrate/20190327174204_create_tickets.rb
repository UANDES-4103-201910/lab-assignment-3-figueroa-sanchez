class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :price
      t.references :Category, foreign_key: true
      t.references :Event, foreign_key: true
      t.references :Order, foreign_key: true

      t.timestamps
    end
  end
end
