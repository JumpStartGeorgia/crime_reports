class TranslateRelationships < ActiveRecord::Migration
  def self.up
    Relationship.create_translation_table!({
      :name => :string,
      :description => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Relationship.drop_translation_table! :migrate_data => true
  end
end
