class Workout < ApplicationRecord
    #associations
    has_many :exercises_workouts
    has_many :exercises, through: :exercises_workouts
end
