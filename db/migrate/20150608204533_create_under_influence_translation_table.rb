class CreateUnderInfluenceTranslationTable < ActiveRecord::Migration
  def change
    UnderInfluence.create_translation_table! :name => :string
  end
end
