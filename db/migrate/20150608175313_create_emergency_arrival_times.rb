class CreateEmergencyArrivalTimes < ActiveRecord::Migration
  def change
    create_table :emergency_arrival_times do |t|
      t.string :name

      t.timestamps
      EmergencyArrivalTime.create_translation_table! :name => :string
    end
  end
end
