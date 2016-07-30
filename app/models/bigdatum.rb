class Bigdatum < ApplicationRecord
  validates :name, presence: true, length: { in: 2..10 }
  validates :description, length: { maximum: 100 }
end
