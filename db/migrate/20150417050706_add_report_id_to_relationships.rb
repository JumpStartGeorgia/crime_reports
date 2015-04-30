class AddReportIdToRelationships < ActiveRecord::Migration
  def change
    add_column :relationships, :report_id, :integer
    add_index :relationships, :report_id
  end
end
