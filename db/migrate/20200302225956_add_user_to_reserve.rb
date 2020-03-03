class AddUserToReserve < ActiveRecord::Migration[6.0]
  def change
    add_reference :reserves, :user, index: true, foreign_key: true
  end
end
