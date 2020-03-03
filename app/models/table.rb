class Table < ApplicationRecord

  belongs_to :restaurant
  has_many :reserves

  validates :name, :restaurant, presence: true

end
