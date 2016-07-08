class RemoveCompletedFromGoals < ActiveRecord::Migration
  def change
    remove_column :goals, :completed
    add_column :goals, :completed, :boolean, :default => false

  end
end
