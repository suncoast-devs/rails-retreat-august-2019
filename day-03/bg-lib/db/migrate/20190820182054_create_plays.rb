class CreatePlays < ActiveRecord::Migration[5.2]
  def change
    create_table :plays do |t|
      t.references :game, foreign_key: true
      t.text :note
      t.date :played_on

      t.timestamps
    end
  end
end
