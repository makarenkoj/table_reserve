class AddTableToReserve < ActiveRecord::Migration[6.0]
  def change
    add_reference :reserves, :table, index: true, foreign_key: true
  end
end
