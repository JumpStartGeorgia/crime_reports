class CreateDistrictsTranslationTable < ActiveRecord::Migration
  def change
    District.create_translation_table! :name => :string
  end
end
