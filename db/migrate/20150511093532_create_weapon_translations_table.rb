class CreateWeaponTranslationsTable < ActiveRecord::Migration
  def up
    Weapon.create_translation_table! :name => :string
  end

  def down
    drop_table :weapons
  end
end
