class Event < ApplicationRecord
  belongs_to :interest
  has_many :events_guests
  has_many :users, through: :events_guests
  belongs_to :host, class_name: 'User'
end
