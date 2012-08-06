class AddOptionsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :option1, :string
    add_column :tasks, :option2, :string
    add_column :tasks, :option3, :string
    add_column :tasks, :option4, :string
    add_column :tasks, :option5, :string
    add_column :tasks, :solution, :text
  end
end
