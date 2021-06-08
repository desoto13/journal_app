class Task < ApplicationRecord
    belongs_to :category
    validates :name, presence: true, length: { maximum: 20 }, uniqueness: { scope: :category, message: "task name is already taken" }
    validates :description, presence: true
    validates :deadline, presence: true
end
