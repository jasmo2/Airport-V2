class DropEmailFromPassengers < ActiveRecord::Migration
  def change
  	remove_column :passengers, :email
  end
end
