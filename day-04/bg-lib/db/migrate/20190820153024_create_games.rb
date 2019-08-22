class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.string :designer
      t.string :artist
      t.string :publisher
      t.integer :min_players
      t.integer :max_players
      t.integer :play_time
      t.integer :year

      t.timestamps
    end
  end
end
