class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.references :user, foreign_key: true
      t.references :skill, foreign_key: true
      t.string :status
      t.date :starting_date
      t.integer :duration

      t.timestamps
    end
  end
end
