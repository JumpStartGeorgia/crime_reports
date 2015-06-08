class ChangePoliceColumn < ActiveRecord::Migration
  def up
    remove_column :reports, :police_arrival_time
    add_column :reports, :police_arrival_time, :string
  end

  def down
    remove_column :reports, :police_arrival_time
    add_column :reports, :police_arrival_time, :time
  end
end
