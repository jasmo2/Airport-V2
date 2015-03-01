class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :airline_id
      t.integer :number

      t.timestamps null: false
    end
  end
end
