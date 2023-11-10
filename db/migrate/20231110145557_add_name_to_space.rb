class AddNameToSpace < ActiveRecord::Migration[7.0]
  def change
    add_column :spaces, :name, :string
    add_column :spaces, :description, :string
  end
end
