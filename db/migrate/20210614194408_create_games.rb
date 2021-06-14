class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.text "clues", default: [], array: true
      t.text "solution", default: [], array: true
      t.string "top_header", default: [], array: true
      t.string "top_label", default: [], array: true
      t.string "side_header", default: [], array: true
      t.string "side_label", default: [], array: true

      t.timestamps
    end
  end
end
