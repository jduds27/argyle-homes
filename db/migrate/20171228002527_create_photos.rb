class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.text :title
      t.text :main_image
      t.text :thumb_image

      t.timestamps
    end
  end
end
