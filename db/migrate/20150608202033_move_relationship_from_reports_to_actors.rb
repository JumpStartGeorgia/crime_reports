class MoveRelationshipFromReportsToActors < ActiveRecord::Migration
  def up
    remove_column :reports, :relationship_id
    add_column :actors, :relationship_id, :integer
    add_index :actors, :relationship_id
  end

  def down
     add_column :reports, :relationship_id, :integer
     remove_column :actors, :relationship_id
  end
end
