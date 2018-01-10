class CreateExercisesWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises_workouts do |t|
      t.integer :exercise_id
      t.integer :workout_id

      t.timestamps
    end

    add_index :exercises_workouts, [:exercise_id, :workout_id]
  end
end
