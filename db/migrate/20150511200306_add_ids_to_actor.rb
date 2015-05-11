class AddIdsToActor < ActiveRecord::Migration
  def change
    add_column :actors, :actor_type_id, :integer
    add_index :actors, :actor_type_id

    add_column :actors, :education_status_id, :integer
    add_index :actors, :education_status_id

    add_column :actors, :employment_status_id, :integer
    add_index :actors, :employment_status_id

    add_column :actors, :family_status_id, :integer
    add_index :actors, :family_status_id

    add_column :actors, :social_status_id, :integer
    add_index :actors, :social_status_id

  end
end
