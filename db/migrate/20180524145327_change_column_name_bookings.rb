class ChangeColumnNameBookings < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :starting_date, :starts_at
  end
end
