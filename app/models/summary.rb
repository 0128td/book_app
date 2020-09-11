class Summary < ApplicationRecord
  validates :book_id, presence: true
  validates :section, presence: true
  validates :summary, presence: true
end
