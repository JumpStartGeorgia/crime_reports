class RemoveDescriptionFromRelationshipTranslations < ActiveRecord::Migration
  def up
    remove_column :relationship_translations, :description
  end

  def down
    add_column :relationship_translations, :description, :text
  end
end
