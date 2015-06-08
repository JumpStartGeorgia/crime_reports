class CreateGunPermTransTable < ActiveRecord::Migration
  def change
    GunPerm.create_translation_table! :name => :string
  end
end
