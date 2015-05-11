class CreateSubstanceTranslationsTable < ActiveRecord::Migration
  def change
    Substance.create_translation_table! :name => :string
  end
end
