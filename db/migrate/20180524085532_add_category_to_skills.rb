class AddCategoryToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :category, :string
  end
end
