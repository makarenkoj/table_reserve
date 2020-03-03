class CreateReserves < ActiveRecord::Migration[6.0]
  def change
    create_table :reserves do |t|
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps
    end
  end
end
