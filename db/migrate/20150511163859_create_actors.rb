class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :fname
      t.string :lname
      t.boolean :gender
      t.date :dob
      t.integer :children
      t.boolean :crim_back
      t.boolean :mental_reg
      t.boolean :gun

      t.timestamps
    end
  end
end
