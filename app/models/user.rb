class User < ApplicationRecord

  has_many :reserves

  validates :name, :email, presence: true
  validates :email, uniqueness: true,
            format: {with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/,
                     message: "format is incorrect"}

  before_validation :downcase_name

  def downcase_name
    self.name.downcase! unless name.blank?
  end
end
