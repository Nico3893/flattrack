class AddColumnsToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :comment, :string
    add_column :flats, :address_specification, :string
  end
end
