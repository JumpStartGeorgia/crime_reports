class CreateCrimBgs < ActiveRecord::Migration
  def change
    create_table :crim_bgs do |t|
      t.string :name

      t.timestamps
    end
  end
end
