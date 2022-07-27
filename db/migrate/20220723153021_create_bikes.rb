class CreateBikes < ActiveRecord::Migration[6.1]
  def change
    create_table :bikes do |t|
      t.string :name
      t.string :model
      t.text :description
      t.string :location
      t.integer :year
      t.float :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
