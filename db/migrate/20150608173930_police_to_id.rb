class PoliceToId < ActiveRecord::Migration
  def up
    remove_column :reports, :police_arrival_time
    add_column :reports, :police_arrival_id, :integer
  end

  def down
    remove_column :reports, :police_arrival_id
    add_column :reports, :police_arrival_time, :string
  end
end
