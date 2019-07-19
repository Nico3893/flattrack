class AddCategoryToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :category, foreign_key: { to_table: :task_categories }
  end
end
