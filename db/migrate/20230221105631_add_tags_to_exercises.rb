class AddTagsToExercises < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :tag, :string
  end
end
