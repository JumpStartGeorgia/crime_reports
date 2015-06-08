class AddUnderInfluenceToActors < ActiveRecord::Migration
  def change
    add_column :actors, :under_influence_id, :integer
  end
end
