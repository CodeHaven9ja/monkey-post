class CreateFixtures < ActiveRecord::Migration
  def change
    create_table :fixtures do |t|
      t.integer :home_club
      t.integer :away_club
      t.integer :stadium_id
      t.integer :referee_id
      t.integer :competition_id
      t.date :fix_time

      t.timestamps
    end
  end
end
