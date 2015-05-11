class CreateActorTypes < ActiveRecord::Migration
  def change
    create_table :actor_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
