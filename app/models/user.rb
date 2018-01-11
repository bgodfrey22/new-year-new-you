class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader

  validates :username, presence: true, uniqueness: true

  def display_avatar
    if avatar.url
      ActionController::Base.helpers.image_tag(avatar.url, height: '30', width: '30')
    else 
      nil
    end
  end 

  def admin?
    role == 'admin'
  end 

  def guest?
    role == 'guest'
  end

end
