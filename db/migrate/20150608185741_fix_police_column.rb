class FixPoliceColumn < ActiveRecord::Migration
  def up
    remove_column :reports, :police_arrival_id
    add_column :reports, :police_arrival_time_id, :integer
  end

  def down
    remove_column :reports, :police_arrival_time_id
    add_column :reports, :police_arrival_id, :integer
  end
end
