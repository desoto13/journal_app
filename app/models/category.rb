class Category < ApplicationRecord
    has_many :tasks, dependent: :destroy
    validates :name, presence: true, length: { maximum: 15 }, uniqueness: { scope: :user, message: "category name is already taken" }
    validates :description, presence: true, length: { maximum: 60 }
    belongs_to :user
end
