class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :service_types, foreign_key: 'user_id', dependent: :destroy
  has_many :monthly_services, foreign_key: 'user_id', dependent: :destroy
  has_many :quarterly_services, foreign_key: 'user_id', dependent: :destroy
  has_many :yearly_services, foreign_key: 'user_id', dependent: :destroy
  has_many :biannual_services, foreign_key: 'user_id', dependent: :destroy
  has_many :commissioned_bies, foreign_key: 'user_id', dependent: :destroy

  validates_presence_of :email
  validates :password, presence: true
end
