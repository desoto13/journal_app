class AddCheckboxForFinishedTask < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :finish, :boolean
  end
end
