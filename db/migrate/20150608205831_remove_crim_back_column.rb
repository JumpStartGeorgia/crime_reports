class RemoveCrimBackColumn < ActiveRecord::Migration
  def up
    remove_column :actors, :crim_back
  end

  def down
    add_column :actors, :crim_back, :boolean
  end
end
