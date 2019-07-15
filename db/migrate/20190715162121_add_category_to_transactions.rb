class AddCategoryToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_reference :transactions, :category, foreign_key: { to_table: :transaction_categories }
    # add_reference :transactions, :category, index: true
    # add_foreign_key :transactions, :transaction_categories, column: :category_id
  end
end
