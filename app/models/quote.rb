class Quote < ApplicationRecord
  validates :saying, presence: true, length: { maximum: 250, minimum: 2 }
  validates :author, presence: true, length: { maximum: 100, minimum: 1 }
end