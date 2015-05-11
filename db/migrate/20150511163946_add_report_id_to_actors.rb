class AddReportIdToActors < ActiveRecord::Migration
  def change
    add_column :actors, :report_id, :integer
    add_index :actors, :report_id
  end
end
