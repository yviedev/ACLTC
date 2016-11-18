class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.text :description
      t.integer :year_built
      t.integer :square_feet
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :floors
      t.boolean :availability
      t.decimal :price

      t.timestamps
    end
  end
end
