class LocCatToId < ActiveRecord::Migration
  def up
    remove_column :reports, :location_category
    add_column :reports, :location_category_id, :integer
  end

  def down
    remove_column :reports, :location_category_id
    add_column :reports, :location_category, :string
  end
end
