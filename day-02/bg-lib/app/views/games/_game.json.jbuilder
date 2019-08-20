json.extract! game, :id, :title, :designer, :artist, :publisher, :min_players, :max_players, :play_time, :year, :created_at, :updated_at
json.url game_url(game, format: :json)
