class AttendanceJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_table :attendance, id: false do |t|
      t.belongs_to :user
      t.belongs_to :event
    end
  end
end
