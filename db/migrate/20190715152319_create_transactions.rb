class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :flat, foreign_key: true
      t.integer :amount, null: false
      t.date :date, null: false
      # t.references :transaction_category, foreign_key: true
      # t.references :category, index: true, foreign_key: { to_table: :transaction_categories }
      t.string :description
      t.boolean :is_expense, null: false
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
