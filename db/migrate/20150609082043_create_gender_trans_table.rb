class CreateGenderTransTable < ActiveRecord::Migration
  def change
    Gender.create_translation_table! :name => :string
  end
end
