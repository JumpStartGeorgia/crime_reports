class ChangeSexBooleanToDropdown < ActiveRecord::Migration
  def up
    remove_column :actors, :gender
    add_column :actors, :gender_id, :integer
    add_index :actors, :gender_id
  end

  def down
    remove_column :actors, :gender_id
    add_column :actors, :gender, :boolean
  end
end
