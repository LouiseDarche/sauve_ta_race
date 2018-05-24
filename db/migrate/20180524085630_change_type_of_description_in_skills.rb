class ChangeTypeOfDescriptionInSkills < ActiveRecord::Migration[5.2]
  def change
    change_column :skills, :description, :text
  end
end
