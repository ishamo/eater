class Person < ApplicationRecord
  validates :name, presence: true, length: { in: 2..10 }
  validates :description, length: { maximum: 100 }
  validates :choice, inclusion: { in: %w(大别山 蒸菜), message: "并不能提供 %{value} 这道菜." }
end
