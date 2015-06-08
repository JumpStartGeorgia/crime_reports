class CreatePoliceArrivalTimeTranslationsTable < ActiveRecord::Migration
  def change
    PoliceArrivalTime.create_translation_table! :name => :string
  end
end
