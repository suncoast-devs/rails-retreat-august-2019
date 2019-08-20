# Hello, Rails

```sh
gem uninstall rails -v 6.0.0
gem uninstall railties -v 6.0.0

gem install rails -v 5.2.3

rails new bg-lib

rails db:create

rails generate scaffold Game title designer artist publisher min_players:integer max_players:integer play_time:integer year:integer
rails db:migrate

rails g model Play game:references note:text played_on:date
rails db:migrate

rails g controller plays

rails g integration_test create_game_and_log_play

```

```yml
takenoko:
  name: Takenoko
  designer: Antoine Bauza
  artist: Nicolas Fructus, Picksel, Yuio
  publisher: Asmodee
  min_players: 2
  max_players: 4
  play_time: 45
  year: 2011

rising_sun:
  name: Rising Sun
  designer: Eric M. Lang
  artist: Edgar Skomorowski, Adrian Smith
  publisher: CMON
  min_players: 2
  max_players: 6
  play_time: 120
  year: 2018

coimbra:
  name: Coimbra
  designer: Eric M. Lang
  artist: Chris Quilliams
  publisher: Eggertspiele
  min_players: 2
  max_players: 4
  play_time: 90
  year: 2018
```
