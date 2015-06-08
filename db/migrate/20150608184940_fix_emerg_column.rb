class FixEmergColumn < ActiveRecord::Migration
  def up
    remove_column :reports, :emergency_arrival_id
    add_column :reports, :emergency_arrival_time_id, :integer
  end

  def down
    remove_column :reports, :emergency_arrival_time_id
    add_column :reports, :emergency_arrival_time, :integer
  end
end
