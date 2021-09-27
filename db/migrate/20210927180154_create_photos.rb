class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.string :username
      t.string :image

      t.timestamps
    end
  end
end
