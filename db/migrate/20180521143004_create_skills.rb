class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :description
      t.string :location
      t.integer :price

      t.timestamps
    end
  end
end
