class ChangeGunToDropdown < ActiveRecord::Migration
  def up
    remove_column :actors, :gun
    add_column :actors, :gun_perm_id, :integer
  end

  def down
    remove_column :actors, :gun_perm_id
    add_column :actors, :gun, :boolean
  end
end
