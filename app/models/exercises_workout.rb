class ExercisesWorkout < ApplicationRecord
    belongs_to :exercise
    belongs_to :workout

    accepts_nested_attributes_for :exercise,
                                  :reject_if => :all_blank
end
