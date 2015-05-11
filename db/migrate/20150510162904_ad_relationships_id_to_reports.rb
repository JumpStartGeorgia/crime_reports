class AdRelationshipsIdToReports < ActiveRecord::Migration
  def up
    add_column :reports, :relationship_id, :integer
    add_index :reports, :relationship_id
  end

  def down
    remove_column :reports, :relationship_id
  end
end
