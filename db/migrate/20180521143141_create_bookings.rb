class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :skill, foreign_key: true
      t.string :status
      t.date :starts_at
      t.date :ends_at

      t.timestamps
    end
  end
end
