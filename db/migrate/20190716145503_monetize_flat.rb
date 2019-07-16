class MonetizeFlat < ActiveRecord::Migration[5.2]
  def change
    change_table :flats do |t|
      t.monetize :monthly_rent # Rails 4x and above
    end
  end
end
