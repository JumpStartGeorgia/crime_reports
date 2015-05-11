class AddMotiveIdToReportsTable < ActiveRecord::Migration
  def change
    add_column :reports, :motive_id, :integer
    add_index :reports, :motive_id
  end
end
