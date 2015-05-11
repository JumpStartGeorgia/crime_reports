class RemoveDescriptionFromRelationships < ActiveRecord::Migration
  def up
    remove_column :relationships, :description
  end

  def down
    add_column :relationships, :description, :integer
  end
end
