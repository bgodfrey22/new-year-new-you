class Exercise < ApplicationRecord
    #associations
    has_many :exercises_workouts
    has_many :workouts, through: :exercises_workouts

    mount_uploader :image, ImageUploader

    MUSCLE_GROUP = ['Legs', 'Chest', 'Back', 'Shoulders', 'Arms', 'Abs/Core']

end
