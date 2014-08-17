class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.string :address
      t.string :tel
      t.decimal :lat, precision: 11, scale: 8 
      t.decimal :lng, precision: 11, scale: 8

      t.timestamps
    end
  end
end
