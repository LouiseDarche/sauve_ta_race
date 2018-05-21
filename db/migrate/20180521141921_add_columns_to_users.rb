class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :location, :string
    add_column :users, :status, :string
    add_column :users, :specie, :string
  end
end
