class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum roles: {manager: 0, employer: 1, hr: 2,vp: 3}
  validates_presence_of :role,:name,:email,:password,:password_confirmation
end
