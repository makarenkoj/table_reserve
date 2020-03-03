class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :schedule
      t.integer :number_of_tables

      t.timestamps
    end
  end
end
