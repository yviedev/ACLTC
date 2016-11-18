class EditProperty < ActiveRecord::Migration[5.0]
  def change
    remove_column :properties, :floors, :integer
    rename_column :properties, :price, :decimal
  end
end
