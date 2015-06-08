class AddIndexCrimBackColumn < ActiveRecord::Migration
  def change
    add_index :actors, :crim_bg_id
  end
end
