class CreateSubstances < ActiveRecord::Migration
  def change
    create_table :substances do |t|
      t.string :name

      t.timestamps
    end
  end
end
