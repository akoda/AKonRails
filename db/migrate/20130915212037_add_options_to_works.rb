class AddOptionsToWorks < ActiveRecord::Migration
  def change
    add_column :works, :series, :string
    add_column :works, :publisher, :string
    add_column :works, :role, :string
  end
end
