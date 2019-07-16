class AddFlatToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :flat, foreign_key: true
  end
end
