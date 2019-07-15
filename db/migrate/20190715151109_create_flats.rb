class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :address, null: false
      t.integer :area
      t.integer :rooms
      t.integer :parking_space
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
