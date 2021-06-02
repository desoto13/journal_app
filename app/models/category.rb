class Category < ApplicationRecord
    has_many :tasks, dependent: :destroy
    validates :name, presence: true, uniqueness: { scope: :user, message: "category name is already taken" }
    validates :description, presence: true
    belongs_to :user
end
