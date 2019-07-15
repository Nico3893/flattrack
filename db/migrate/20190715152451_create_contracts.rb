class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.references :flat, foreign_key: true
      t.date :start_date, null: false
      t.date :end_date
      t.integer :monthly_rent, null: false

      t.timestamps
    end
  end
end
