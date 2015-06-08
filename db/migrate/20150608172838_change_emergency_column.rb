class ChangeEmergencyColumn < ActiveRecord::Migration
  def up
    remove_column :reports, :emergency_arrival_time
    add_column :reports, :emergency_arrival_time, :string
  end

  def down
    remove_column :reports, :emergency_arrival_time
    add_column :reports, :emergency_arrival_time, :time
  end
end
