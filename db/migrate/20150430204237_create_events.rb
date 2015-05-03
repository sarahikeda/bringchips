class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip
      t.datetime :date
      t.datetime :time
      t.belongs_to :creator

      t.timestamps null: false
    end
  end
end
