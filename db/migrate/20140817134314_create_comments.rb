class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.references :area, index: true

      t.timestamps
    end
  end
end
