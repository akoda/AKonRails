class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.string :av
      t.string :category
      t.string :embed

      t.timestamps
    end
  end
end
