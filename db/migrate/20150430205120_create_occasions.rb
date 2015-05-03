class CreateOccasions < ActiveRecord::Migration
  def change
    create_table :occasions do |t|
      t.references :attendee
      t.references :event
      t.references :dish

      t.timestamps null: false
    end
  end
end
