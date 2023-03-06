class AddReferenceToExercises < ActiveRecord::Migration[7.0]
  def change
    add_reference :exercises, :section, null: false, foreign_key: true
  end
end
