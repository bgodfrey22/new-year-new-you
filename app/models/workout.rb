class Workout < ApplicationRecord
    has_many :exercises_workouts, dependent: :destroy
    has_many :exercises, through: :exercises_workouts

    accepts_nested_attributes_for :exercises_workouts,
                                  :allow_destroy => true
    accepts_nested_attributes_for :exercises 
end
