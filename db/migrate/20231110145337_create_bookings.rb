class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :duration
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :space, null: false, foreign_key: true

      t.timestamps
    end
  end
end
