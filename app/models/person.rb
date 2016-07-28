class Person < ApplicationRecord
  validates :name, presence: true
  validates :description, length: { maximum: 100 }
end
