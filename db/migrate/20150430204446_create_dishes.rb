class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :course
      t.boolean :gluten_free
      t.timestamps null: false
    end
  end
end
