class AddSubstanceIdToActors < ActiveRecord::Migration
  def change
    add_column :actors, :substance_id, :integer
    add_index :actors, :substance_id
  end
end
