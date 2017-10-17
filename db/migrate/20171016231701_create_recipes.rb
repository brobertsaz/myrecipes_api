class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :uri
      t.string :label
      t.string :image
      t.string :source
      t.string :url
      t.string :share_url
      t.integer :yield
      t.integer :calories
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
