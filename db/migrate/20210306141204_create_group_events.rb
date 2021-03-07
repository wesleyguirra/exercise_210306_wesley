class CreateGroupEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :group_events do |t|
      t.string :name
      t.text :description
      t.string :location
      t.datetime :starts
      t.datetime :ends
      t.integer :duration
      t.integer :status

      t.timestamps
    end
  end
end
