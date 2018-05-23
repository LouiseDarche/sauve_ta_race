class ChangeColumnNameSkills < ActiveRecord::Migration[5.2]
  def change
    rename_column :skills, :image_url, :photo
  end
end
