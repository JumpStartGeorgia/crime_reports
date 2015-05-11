class CreateMotiveTranslationsTable < ActiveRecord::Migration
  def change
    Motive.create_translation_table! :name => :string
  end
end
