class User < ApplicationRecord
  validates :nickname, presence: true
  validates :profile, presence: true
  validates :post, presence: true
  validates :area, presence: true
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :prototypes
  has_many :comment
end
