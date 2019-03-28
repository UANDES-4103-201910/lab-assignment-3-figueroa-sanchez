class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :price
      t.references :category, foreign_key: true
      t.references :event, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
