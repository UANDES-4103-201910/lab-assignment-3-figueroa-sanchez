class AddEventVenueToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :event_venues, :venue_id, :integer
  end
end
