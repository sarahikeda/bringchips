class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip
      t.text :bio
      t.references :dishes
      t.timestamps null: false
    end
  end
end
