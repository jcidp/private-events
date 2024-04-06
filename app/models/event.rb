class Event < ApplicationRecord
  validates :name, :date, :location, presence: true

  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  has_and_belongs_to_many :attendees, class_name: "User", join_table: "attendance"

  scope :past, -> { where(date: ..Time.now) }
  scope :upcoming, -> { where(date: Time.now...) }

  # def self.past
  #   self.where(date: ..Time.now)
  # end

  # def self.upcoming
  #   self.where(date: Time.now...)
  # end
end
