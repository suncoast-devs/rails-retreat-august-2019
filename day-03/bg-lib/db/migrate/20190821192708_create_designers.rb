class CreateDesigners < ActiveRecord::Migration[5.2]
  def change
    create_table :designers do |t|
      t.string :name
      t.text :biography

      t.timestamps
    end

    # alphabetical order
    # plural outside of the block; singular inside of the block
    create_table :designers_games, id: false do |t|
      t.references :designer
      t.references :game
    end

    Game.all.each do |game|
      game.designer.split(",").each do |designer|
        game.designers << Designer.find_or_create_by(name: designer)
      end
    end

    remove_column :games, :designer, :string
  end
end
