class Photo < ActiveRecord::Migration
  def up
    rename_column :photos, :type, :datatype
  end

  def down
    rename_column :photos, :datatype, :type
  end
end
