class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :content
      t.boolean :completed
      t.integer :goal_category_id
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
