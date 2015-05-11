class RemoveRelationshipsIdFromReports < ActiveRecord::Migration
  def up
    remove_column :reports, :relationship_id
  end

  def down
    add_column :reports, :relationship_id, :integer
  end
end
