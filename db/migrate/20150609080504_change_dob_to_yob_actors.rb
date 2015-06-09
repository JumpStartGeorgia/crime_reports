class ChangeDobToYobActors < ActiveRecord::Migration
  def up
    remove_column :actors, :dob
    add_column :actors, :yob, :integer
  end

  def down
    remove_column :actors, :yob
    add_column :actors, :dob, :date
  end
end
