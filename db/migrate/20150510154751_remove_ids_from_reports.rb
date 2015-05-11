class RemoveIdsFromReports < ActiveRecord::Migration
  def up
    remove_column :reports, :weapon_id
    remove_column :reports, :motive_id
    remove_column :reports, :report_status_id
  end

  def down
    add_column :reports, :weapon_id, :integer
    add_column :reports, :motive_id, :integer
    add_column :reports, :report_status_id, :integer
  end
end
