class Livro < ApplicationRecord
    validates :titulo, presence: true, length: { maximum: 255 }
  validates :autor, presence: true, length: { maximum: 255 }
  validates :nota, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :descricao, presence: true
end
