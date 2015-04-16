class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
