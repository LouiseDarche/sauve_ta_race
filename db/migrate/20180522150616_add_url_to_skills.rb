class AddUrlToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :image_url, :string
  end
end
