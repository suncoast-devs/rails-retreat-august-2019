# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

GAMES = [
  # {
  #   title: "Takenoko",
  #   designer: "Antoine Bauza",
  #   artist: "Nicolas Fructus, Picksel, Yuio",
  #   publisher: "Asmodee",
  #   min_players: 2,
  #   max_players: 4,
  #   play_time: 45,
  #   year: 2011,
  # },
  # {
  #   title: "Rising Sun",
  #   designer: "Eric M. Lang",
  #   artist: "Edgar Skomorowski, Adrian Smith",
  #   publisher: "CMON",
  #   min_players: 2,
  #   max_players: 6,
  #   play_time: 120,
  #   year: 2018,
  # },
  {
    title: "Coimbra",
    designer: "Eric M. Lang",
    artist: "Chris Quilliams",
    publisher: "Eggertspiele",
    description: "In the 15th and 16th century, Portugal is thriving under its leading role during the Age of Discovery. Nestled in the heart of Portugal, the city of Coimbra serves as a cultural center of the country. As the head of one of Coimbra's oldest houses, you seek to earn prestige by deepening relationships with nearby monasteries or funding expeditions of the era. To reach this goal, you must vie for the favors of the city's most influential citizens, even if you must offer a bit of coin or some protective detail.

    Coimbra introduces an innovative new dice mechanism in which the dice players draft each round are used in multiple different ways and have an impact on many aspects of their decision making. While there are many paths to victory, players should always seek to optimize their opportunities with every roll of the dice. Combined with ever-changing synergies of the citizens, expeditions, and monasteries, no two games of Coimbra will ever be the same!",
    min_players: 2,
    max_players: 4,
    play_time: 90,
    year: 2018,
  },
  {
    title: "Blood Rage",
    designer: "Eric M. Lang",
    artist: "Adrian Smith",
    publisher: "CMON",
    description: "\"Life is Battle; Battle is Glory; Glory is ALL\"

    In Blood Rage, each player controls their own Viking clan’s warriors, leader, and ship. Ragnarök has come, and it’s the end of the world! It’s the Vikings’ last chance to go down in a blaze of glory and secure their place in Valhalla at Odin’s side! For a Viking there are many pathways to glory. You can invade and pillage the land for its rewards, crush your opponents in epic battles, fulfill quests, increase your clan's stats, or even die gloriously either in battle or from Ragnarök, the ultimate inescapable doom.",
    min_players: 3,
    max_players: 5,
    play_time: 120,
    year: 2015,
  },
  # {
  #   title: "Ticket to Ride",
  #   designer: "Alan R. Moon",
  #   artist: "Cyrille Daujean, Julien Delval",
  #   publisher: "Days of Wonder",
  #   min_players: 2,
  #   max_players: 5,
  #   play_time: 60,
  #   year: 2004,
  # },
  # {
  #   title: "HATE",
  #   designer: "Eric M. Lang",
  #   artist: "Adrian Smith",
  #   publisher: "CMON",
  #   min_players: 2,
  #   max_players: 2,
  #   play_time: 120,
  #   year: 2019,
  # },
  # {
  #   title: "Sleeping Gods",
  #   designer: "Ryan Laukat",
  #   artist: "Ryan Laukat",
  #   publisher: "Red Raven Games",
  #   min_players: 1,
  #   max_players: 4,
  #   play_time: 120,
  #   year: 2020,
  # },
  # {
  #   title: "Tapestry",
  #   designer: "Jaime Stegmaier",
  #   artist: "Andrew Bosley, Rom Brown",
  #   publisher: "Stonemaier Games",
  #   min_players: 1,
  #   max_players: 5,
  #   play_time: 120,
  #   year: 2019,
  # },
  # {
  #   title: "The Ancient World",
  #   designer: "Ryan Laukat",
  #   artist: "Ryan Laukat",
  #   publisher: "Red Raven Games",
  #   min_players: 2,
  #   max_players: 4,
  #   play_time: 90,
  #   year: 2019,
  # },
  # {
  #   title: "Cottage Garden",
  #   designer: "Uve Rosengerg",
  #   artist: "Andrea Boekhoff",
  #   publisher: "Stronghold Games",
  #   min_players: 1,
  #   max_players: 4,
  #   play_time: 60,
  #   year: 2016,
  # },
  {
    title: "Dale of Merchants",
    designer: "Sami Laakso",
    artist: "Sami Laakso",
    publisher: "Devir",
    description: "It is an age of great discoveries. New and wonderful items find their ways into the hands of the greatest merchants. And if there ever is a place those traders love, it is the town of Dale.

    There’s an extraordinary guild in the Dale founded by the greatest merchants. The tricky part is getting the membership since one must win the annual trading competition to be invited to the guild.

    Notable animalfolk merchants from all over the world have gathered in the town to take part in the event. Everyone has only one goal in mind – to be celebrated as the winner and the newest member of the legendary guild.

    In Dale of Merchants, players take the roles of those participating merchants learning new techniques, trading goods, and managing their stock. The player who first manages to complete their astounding merchant stall wins the game and gets access to the guild!",
    min_players: 2,
    max_players: 4,
    play_time: 30,
    year: 2015,
  },
]

GAMES.each do |data|
  game = Game.create(data)
  path = File.expand_path("./files/#{data[:title].parameterize}.jpg", File.dirname(__FILE__))
  if File.exists?(path)
    game.cover_art.attach(io: File.open(path), filename: "#{data[:title].parameterize}.jpg")
  end
end
