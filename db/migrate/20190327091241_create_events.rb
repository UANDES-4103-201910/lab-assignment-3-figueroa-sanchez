class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :date
      t.references :event_venue

      t.timestamps
    end
  end
end
