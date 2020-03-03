class Restaurant < ApplicationRecord

  has_many :tables

  validates :name, :number_of_tables, presence: true
  validates :name, uniqueness: true

end
