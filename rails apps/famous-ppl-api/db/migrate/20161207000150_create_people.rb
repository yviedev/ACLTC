class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.integer :years_of_acting
      t.integer :number_of_films
      t.integer :highest_grossing_salary

      t.timestamps
    end
  end
end
