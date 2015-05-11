class RemoveReportIdFromRelationship < ActiveRecord::Migration
  def up
    remove_column :relationships, :report_id
  end

  def down
    add_column :relationships, :report_id, :integer
  end
end
