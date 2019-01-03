class Event < ApplicationRecord
  belongs_to :interest
  has_many :events_guests
  has_many :guests, through: :events_guests, foreign_key: 'guest_id'
  belongs_to :host, class_name: 'User'

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :interest, presence: true 
end
