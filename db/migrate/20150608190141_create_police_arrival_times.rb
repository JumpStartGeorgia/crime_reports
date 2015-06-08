class CreatePoliceArrivalTimes < ActiveRecord::Migration
  def change
    create_table :police_arrival_times do |t|
      t.string :name

      t.timestamps
    end
  end
end
