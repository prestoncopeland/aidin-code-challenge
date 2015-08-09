class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :address
      t.text :description
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
