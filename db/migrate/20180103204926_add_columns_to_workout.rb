class AddColumnsToWorkout < ActiveRecord::Migration[5.1]
  def change
    add_column :workouts, :label, :string
    add_column :workouts, :legs, :string
    add_column :workouts, :chest, :string
    add_column :workouts, :back, :string
    add_column :workouts, :shoulders, :string
    add_column :workouts, :arms, :string
    add_column :workouts, :abs, :string
  end
end
