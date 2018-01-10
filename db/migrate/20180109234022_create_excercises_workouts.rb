class CreateExcercisesWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :excercises_workouts do |t|
      t.integer :exercise_id
      t.integer :workout_id

      t.timestamps
    end

    add_index :excercises_workouts, [:exercise_id, :workout_id]
  end
end
