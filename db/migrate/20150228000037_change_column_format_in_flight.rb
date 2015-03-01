class ChangeColumnFormatInFlight < ActiveRecord::Migration
  def up
   change_column :flights, :number, :string
  end

  def down
   change_column :flights, :number, :integer
  end
end
