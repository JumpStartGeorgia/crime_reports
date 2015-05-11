class AddStatusIdToReports < ActiveRecord::Migration
  def change
    add_column :reports, :status_id, :integer
    add_index :reports, :status_id
    Status.create_translation_table! :name => :string
  end
end
