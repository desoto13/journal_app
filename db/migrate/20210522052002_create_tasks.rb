class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks, id: :uuid do |t|
      t.string :name
      t.text :description
      t.date :deadline
      t.belongs_to :category, type: :uuid, index: true
      t.timestamps
    end
  end
end
