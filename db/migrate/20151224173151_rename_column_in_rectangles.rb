class RenameColumnInRectangles < ActiveRecord::Migration
  def change
    rename_column :rectangles, :fillColor, :fill_color
  end
end
