class CreatePlacements < ActiveRecord::Migration[7.0]
  def change
    create_table :placements do |t|
      t.integer :floor
      t.integer :product_shelf
      t.references :cosmetic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
