class CreateTopFans < ActiveRecord::Migration[5.0]
  def change
    create_table :top_fans do |t|
      t.string :name
      t.string :email
      t.string :location
      t.text :quote

      t.timestamps
    end
  end
end
