class CreateCosmetics < ActiveRecord::Migration[7.0]
  def change
    create_table :cosmetics do |t|
      t.string :name
      t.integer :quantity
      t.float :price
      t.string :category
      t.string :brand

      t.timestamps
    end
  end
end
