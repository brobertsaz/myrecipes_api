class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :description
      t.integer :quantity
      t.string :measure
      t.string :food
      t.float :weight
      t.references :recipe,  foreign_key: true
      t.timestamps
    end
  end
end
