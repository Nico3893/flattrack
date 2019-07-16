class AddUrgencyToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :urgency, :integer, null: false, default: 3
  end
end
