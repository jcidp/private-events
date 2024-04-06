class Event < ApplicationRecord
  validates :name, :date, :location, presence: true

  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  has_and_belongs_to_many :attendees, class_name: "User", join_table: "attendance"
end
