class DropFlightIdTable < ActiveRecord::Migration
  def change
  	remove_column :passengers, :flight_id
  end
end
