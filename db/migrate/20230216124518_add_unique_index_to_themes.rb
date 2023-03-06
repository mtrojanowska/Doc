class AddUniqueIndexToThemes < ActiveRecord::Migration[7.0]
  def change
    add_index :themes, :title, unique: true
  end
end
