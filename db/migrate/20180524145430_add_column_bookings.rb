class AddColumnBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :ends_at, :date
  end
end
