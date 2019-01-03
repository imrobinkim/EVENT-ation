class Event < ApplicationRecord
  belongs_to :interest
  has_many :events_guests
  has_many :guests, through: :events_guests, foreign_key: 'guest_id'
  belongs_to :host, class_name: 'User'

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validate :event_date_cannot_be_in_the_past

  def event_date_cannot_be_in_the_past
    if datetime.present? && datetime.past?
      errors.add(:date, "of event can't be in the past")
    end
  end

  def add_guest_to_event(guest_obj)
    self.guests << guest_obj
  end

end
