class AddLatAndLong < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :latitude, :float
    add_column :contacts, :longitude, :float
    add_column :contacts, :address, :string
  end
end
