class AddCategoryToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :category, foreign_key: { to_table: :task_categories }
    # add_reference :tasks, :category, index: true
    # add_foreign_key :tasks, :task_categories, column: :category_id
  end
end
