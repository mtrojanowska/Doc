class AddUniqueIndexToSections < ActiveRecord::Migration[7.0]
  def change
    add_index :sections, :title, unique: true
  end
end
