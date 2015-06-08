class CreateLocCatTranslationsTable < ActiveRecord::Migration
  def change
    LocationCategory.create_translation_table! :name => :string
  end
end
