class AddColumnToReports < ActiveRecord::Migration
  def change
    add_column :reports, :district_id, :integer
    add_index :reports, :district_id
  end
end
