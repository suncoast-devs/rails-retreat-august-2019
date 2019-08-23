class AddMinAgeToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :min_age, :integer
  end
end
