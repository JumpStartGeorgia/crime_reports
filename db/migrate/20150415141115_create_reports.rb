class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :official_case_number
      t.date :crime_date
      t.time :crime_time
      t.string :location_address
      t.float :location_lat
      t.float :location_lon
      t.string :location_category
      t.time :emergency_arrival_time
      t.time :police_arrival_time
      t.integer :relationship_id
      t.integer :weapon_id
      t.integer :motive_id
      t.integer :report_status_id

      t.timestamps
    end
    add_index :reports, :relationship_id
    add_index :reports, :weapon_id
    add_index :reports, :motive_id
    add_index :reports, :report_status_id
  end
end
