class EmergencyToId < ActiveRecord::Migration
  def up
    remove_column :reports, :emergency_arrival_time
    add_column :reports, :emergency_arrival_id, :integer
  end

  def down
    remove_column :reports, :emergency_arrival_id
    add_column :reports, :emergency_arrival_time, :string
  end
end
