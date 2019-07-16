class MonetizeTransaction < ActiveRecord::Migration[5.2]
  def change
    change_table :transactions do |t|
      t.monetize :amount
    end
  end
end
