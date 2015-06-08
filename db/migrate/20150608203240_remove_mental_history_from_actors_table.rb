class RemoveMentalHistoryFromActorsTable < ActiveRecord::Migration
  def up
    remove_column :actors, :mental_reg
  end

  def down
    add_column :actors, :mental_reg, :boolean
  end
end
