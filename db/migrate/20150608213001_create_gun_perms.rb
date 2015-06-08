class CreateGunPerms < ActiveRecord::Migration
  def change
    create_table :gun_perms do |t|
      t.string :name

      t.timestamps
    end
    add_index :actors, :gun_perm_id
  end
end
