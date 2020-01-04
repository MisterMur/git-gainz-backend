class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_schedules
  has_many :schedules, through: :user_schedules
  has_many :user_workouts
  has_many :workouts,through: :user_workouts


  after_create :update_access_token!

  # validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true

  private

  def update_access_token!
    self.access_token = "#{self.id}:#{Devise.friendly_token}"
    save
  end
end
