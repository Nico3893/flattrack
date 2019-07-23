class AddColumnsToInventories < ActiveRecord::Migration[5.2]
  def change
    add_column :inventories, :replaced, :boolean, default: false, null: false
    add_column :inventories, :deleted, :boolean, default: false, null: false
  end
end
