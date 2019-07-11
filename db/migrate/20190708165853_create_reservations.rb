class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :time
      t.string :name
      t.string :restaurant
      t.string :review
      t.references :user
      t.references :restaurant


      t.timestamps
    end
  end
end
