class CreateSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :spaces do |t|
      t.string :size
      t.float :price
      t.string :location
      t.string :amenties
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
