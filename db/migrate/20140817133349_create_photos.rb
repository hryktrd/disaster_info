class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.binary :data, limit: 3.megabyte
      t.string :type
      t.references :area, index: true
      t.references :situation, index: true

      t.timestamps
    end
  end
end
