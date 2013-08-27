class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :address
      t.integer :stadium_id
      t.string :img_url
      t.date :established_on

      t.timestamps
    end
  end
end
