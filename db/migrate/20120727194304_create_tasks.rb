class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.string :answer
      t.integer :points
      t.integer :category_id

      t.timestamps
    end
  end
end
