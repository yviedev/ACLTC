class AddPersonIdToTopFans < ActiveRecord::Migration[5.0]
  def change
    add_column :top_fans, :person_id, :integer
  end
end
