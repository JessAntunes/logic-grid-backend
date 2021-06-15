class RemoveDescriptionColumnFromGame < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :description
    add_column :games, :description, :string
  end
end
