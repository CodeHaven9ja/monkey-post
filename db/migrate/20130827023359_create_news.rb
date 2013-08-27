class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :content
      t.string :img_url
      t.integer :user_id
      t.integer :category_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
