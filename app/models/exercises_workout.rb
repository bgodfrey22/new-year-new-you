class ExercisesWorkout < ApplicationRecord
    attr_accessible :exercise,
                    :exercise_attribues

    belongs_to :exercise
    belongs_to :workout

    accepts_nested_attributes_for :exercise,
                                  :reject_if => :all_blank
end
