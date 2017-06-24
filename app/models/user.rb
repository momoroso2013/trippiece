class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :likes
  has_many :projects, through: :likes
  has_many :participants
  mount_uploader :image, ImageUploader
end
