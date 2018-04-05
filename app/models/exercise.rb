class Exercise < ApplicationRecord
    #associations
    has_many :exercises_workouts, dependent: :destroy
    has_many :workouts, through: :exercises_workouts

    mount_uploader :image, ImageUploader

    MUSCLE_GROUP = ['Legs', 'Chest', 'Back', 'Shoulders', 'Arms', 'Abs/Core']
    EQUIPMENT_TYPE = ['Barbell', 'Dumbbell', 'Bands', 'Kettlebell', 'Resistance Machine', 
                      'Lift Machine', 'Stability Ball', 'Medicine Ball']
end
