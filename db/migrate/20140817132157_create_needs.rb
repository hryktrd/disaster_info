class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.string :thing
      t.boolean :status
      t.references :area, index: true

      t.timestamps
    end
  end
end
