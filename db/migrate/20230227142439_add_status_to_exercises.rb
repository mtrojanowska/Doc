class AddStatusToExercises < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :status, :integer, default: 1
  end
end
