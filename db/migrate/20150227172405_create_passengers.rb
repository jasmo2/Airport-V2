class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.integer :flight_id
      t.string :name
      t.string :passport

      t.timestamps null: false
    end
  end
end
