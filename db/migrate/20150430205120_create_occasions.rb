class CreateOccasions < ActiveRecord::Migration
  def change
    create_table :occasions do |t|
      t.references :user
      t.references :event


      t.timestamps null: false
    end
  end
end
