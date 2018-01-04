class RemoveColumnsFromWorkout < ActiveRecord::Migration[5.1]
  def change
    remove_column :workouts, :legs, :string
    remove_column :workouts, :chest, :string
    remove_column :workouts, :back, :string
    remove_column :workouts, :shoulders, :string
    remove_column :workouts, :arms, :string
    remove_column :workouts, :abs, :string
  end
end
