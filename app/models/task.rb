class Task < ApplicationRecord
    belongs_to :category
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
    validates :deadline, presence: true
end
