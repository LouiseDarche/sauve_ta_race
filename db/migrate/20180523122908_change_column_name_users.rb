class ChangeColumnNameUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :image_url, :photo
  end
end
