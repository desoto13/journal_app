class Task < ApplicationRecord
    belongs_to :category
    validates :name, presence: true, uniqueness: { scope: :category, message: "task name is already taken" }
    validates :description, presence: true
    validates :deadline, presence: true
end
