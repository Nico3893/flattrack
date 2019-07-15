class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.string :description
      t.string :status, null: false, default: "open"
      t.references :company, foreign_key: true
      # t.string :category
      # t.references :category, index: true, foreign_key: { to_table: :task_categories }

      t.timestamps
    end
  end
end
