class AddCrimBackColumn < ActiveRecord::Migration
  def up
    add_column :actors, :crim_bg_id, :integer
  end

  def down
    remove_column :actors, :crim_bg_id
  end
end
