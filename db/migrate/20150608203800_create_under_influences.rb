class CreateUnderInfluences < ActiveRecord::Migration
  def change
    create_table :under_influences do |t|
      t.string :name

      t.timestamps
    end
  end
end
