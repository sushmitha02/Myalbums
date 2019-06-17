class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :album

  has_many :addresses

  enum gender: %i(male female)

  accepts_nested_attributes_for :addresses, reject_if: proc { |attributes| attributes[''].blank? }, allow_destroy: true
end
