class CreateSituations < ActiveRecord::Migration
  def change
    create_table :situations do |t|
      t.text :text
      t.boolean :status
      t.references :area, index: true

      t.timestamps
    end
  end
end
