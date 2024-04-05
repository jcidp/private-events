class Event < ApplicationRecord
  validates :name, :date, :location, presence: true

  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
end
