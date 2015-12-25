class CreateRectangles < ActiveRecord::Migration
  def change
    create_table :rectangles do |t|
      t.integer :width, default: 260
      t.integer :height, default: 140
      t.string :fillColor, default: '#ed71ac'

      t.timestamps null: false
    end
  end
end
