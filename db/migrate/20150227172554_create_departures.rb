class CreateDepartures < ActiveRecord::Migration
  def change
    create_table :departures do |t|
      t.integer :flight_id
      t.datetime :date
      t.integer :status, default:0

      t.timestamps null: false
    end
  end
end
