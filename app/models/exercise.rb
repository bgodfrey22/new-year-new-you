class Exercise < ApplicationRecord
    mount_uploader :image, ImageUploader

    MUSCLE_GROUP = ['Legs', 'Chest', 'Back', 'Shoulders', 'Arms', 'Abs/Core']

end
