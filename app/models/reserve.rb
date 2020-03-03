class Reserve < ApplicationRecord

  belongs_to :table
  belongs_to :user

  validates :table, :starts_at, :ends_at, :user, presence: true
  validates :starts_at, :ends_at, inclusion: { in: %w(00, 30) }, allow_nil: true
  validates :starts_at, :ends_at, :overlap => {:exclude_edges => ["starts_at", "ends_at"]}

end
