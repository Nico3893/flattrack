class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.string :name, null: false
      t.integer :historic_value, null: false
      t.integer :book_value
      t.string :description
      t.string :condition
      t.references :flat, foreign_key: true
      t.references :category, foreign_key: { to_table: :inventory_categories }

      t.timestamps
    end
  end
end
