class AddWeaponIdToReports < ActiveRecord::Migration
  def change
    add_column :reports, :weapon_id, :integer
    add_index :reports, :weapon_id
  end
end
