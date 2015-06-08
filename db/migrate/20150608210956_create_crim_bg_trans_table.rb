class CreateCrimBgTransTable < ActiveRecord::Migration
  def change
    CrimBg.create_translation_table! :name => :string
  end
end
