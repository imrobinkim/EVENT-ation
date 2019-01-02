class User < ApplicationRecord
  has_many :events_guests, foreign_key: 'guest_id'
  has_many :events, through: :events_guests
  has_many :events, foreign_key: 'host_id'
  has_many :interests, through: :events
  has_many :guests, class_name: 'EventsGuest', foreign_key: 'guest_id'
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :age, presence: true
  validates :password, length: {minimum: 6}
end
