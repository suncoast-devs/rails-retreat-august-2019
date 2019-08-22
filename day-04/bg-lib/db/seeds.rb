# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

GAMES = [
  {
    title: "Takenoko",
    designer_names: "Antoine Bauza",
    artist: "Nicolas Fructus, Picksel, Yuio",
    publisher: "Asmodee",
    description: <<~END,
    A long time ago at the Japanese Imperial court, the Chinese Emperor offered a giant panda bear as a symbol of peace to the Japanese Emperor. Since then, the Japanese Emperor has entrusted his court members (the players) with the difficult task of caring for the animal by tending to his bamboo garden.

    In Takenoko, the players will cultivate land plots, irrigate them, and grow one of the three species of bamboo (Green, Yellow, and Pink) with the help of the Imperial gardener to maintain this bamboo garden. They will have to bear with the immoderate hunger of this sacred animal for the juicy and tender bamboo. The player who manages his land plots best, growing the most bamboo while feeding the delicate appetite of the panda, will win the game.
  END
    min_players: 2,
    max_players: 4,
    min_age: 2,

    play_time: 45,
    year: 2011,
  },
  {
    title: "Rising Sun",
    designer_names: "Eric M. Lang",
    artist: "Edgar Skomorowski, Adrian Smith",
    publisher: "CMON",
    description: <<~END,
    Rising Sun is a spiritual successor in the same mythic big box series as Blood Rage: same designer, same artist, same studio and same sculptors.

    Rising Sun is a game about honor, negotiation, and warfare in a feudal Japan where the ancient gods (kami) have returned to rebuild the empire.

    Whereas the distant ancestor of Blood Rage was Risk, Rising Sun claims Diplomacy as its distant ancestor. Tackle negotiations, alliances, and war. Capture hostages and commit seppuku. The game features an honor track, which rises and falls based on your actions.
  END
    min_players: 2,
    max_players: 6,
    min_age: 2,
    play_time: 120,
    year: 2018,
  },
  {
    title: "Coimbra",
    designer_names: "Flaminia Brasini and Virginio Gigli",
    artist: "Chris Quilliams",
    publisher: "Eggertspiele",
    description: <<~END,
    In the 15th and 16th century, Portugal is thriving under its leading role during the Age of Discovery. Nestled in the heart of Portugal, the city of Coimbra serves as a cultural center of the country. As the head of one of Coimbra's oldest houses, you seek to earn prestige by deepening relationships with nearby monasteries or funding expeditions of the era. To reach this goal, you must vie for the favors of the city's most influential citizens, even if you must offer a bit of coin or some protective detail.

    Coimbra introduces an innovative new dice mechanism in which the dice players draft each round are used in multiple different ways and have an impact on many aspects of their decision making. While there are many paths to victory, players should always seek to optimize their opportunities with every roll of the dice. Combined with ever-changing synergies of the citizens, expeditions, and monasteries, no two games of Coimbra will ever be the same!
  END
    min_players: 2,
    max_players: 4,
    min_age: 2,
    play_time: 90,
    year: 2018,
  },
  {
    title: "Blood Rage",
    designer_names: "Eric M. Lang",
    artist: "Adrian Smith",
    publisher: "CMON",
    description: <<~END,
    "Life is Battle; Battle is Glory; Glory is ALL"

    In Blood Rage, each player controls their own Viking clan’s warriors, leader, and ship. Ragnarök has come, and it’s the end of the world! It’s the Vikings’ last chance to go down in a blaze of glory and secure their place in Valhalla at Odin’s side! For a Viking there are many pathways to glory. You can invade and pillage the land for its rewards, crush your opponents in epic battles, fulfill quests, increase your clan's stats, or even die gloriously either in battle or from Ragnarök, the ultimate inescapable doom.
  END
    min_players: 3,
    max_players: 5,
    min_age: 2,
    play_time: 120,
    year: 2015,
  },
  {
    title: "Ticket to Ride",
    designer_names: "Alan R. Moon",
    artist: "Cyrille Daujean, Julien Delval",
    publisher: "Days of Wonder",
    description: <<~END,
    With elegantly simple gameplay, Ticket to Ride can be learned in under 15 minutes. Players collect cards of various types of train cars they then use to claim railway routes in North America. The longer the routes, the more points they earn. Additional points come to those who fulfill Destination Tickets – goal cards that connect distant cities; and to the player who builds the longest continuous route.
  END
    min_players: 2,
    max_players: 5,
    min_age: 2,
    play_time: 60,
    year: 2004,
  },
  {
    title: "HATE",
    designer_names: "Eric M. Lang",
    artist: "Adrian Smith",
    publisher: "CMON",
    description: <<~END,
    They ravaged their Mother, the Earth, and bound Her with sorcerous chains. The moon caught fire; the sun froze. In the veins of the world, her lifeblood choked to dust. The oceans boiled to miasmas that clotted the skies. Rocks fanged up from the stubble of dying forests. As She began to rot, Her creatures, Her children, survived as best they could. Tearing at each other, prowling in Her fetid hollows, breeding abominations. Feasting on Her, Fungi and moulds become sentient.

    And, as the ages pass, some lineages of men grow monstrous, even as others diminish, weaken and become easily their slaves. These "higher" men feed on the lesser, growing in strength, and hurl their tribes one upon the other in terrible truceless wars — until one tribe crushes the others into kneeling submission, under a lord, nameless save for his title: Tyrant!

    But though decayed, She was not slain. With the little strength remaining, She seduces Worm; the least, the most abject of those creatures bred for meat. Unlikely savior, through sorcery, and helped by unlooked for allies, Worm follows the thread of his fate to Her. If he can free Her, Her blood will spout into a flood and frenzy of returning Life. And her hatred will swell Worm into being Her champion, Her consort, and Her AVENGER, the Horned God!

    Based on the graphic novels by the acclaimed Adrian Smith, HATE is a highly kinetic, endlessly brutal campaign game of post-apocalyptic survival. Up to six players battle through a multi-game Chronicle where they use their unique clan to savagely plunder, mutilate, and demoralize their opponents. Death is permanent for clan members; once they die, they are out of the game. The player who most expertly uses savagery (gained by doing unspeakable violence upon their foes) to upgrade their warriors and resources (gained by plundering the land) to unlock powerful new abilities from their village will win the game, but only the player with the most hate will become the Tyrant and rule over the rest!
  END
    min_players: 2,
    max_players: 2,
    min_age: 2,
    play_time: 120,
    year: 2019,
  },
  {
    title: "Sleeping Gods",
    designer_names: "Ryan Laukat",
    artist: "Ryan Laukat",
    publisher: "Red Raven Games",
    description: <<~END,
    "Are the stars unfamiliar here?" she asked, and the sky grew suddenly dark, the star's patterns alien and exotic. "This is the Wandering Sea. The gods have brought you here, and you must wake them if you wish to return home."

    In Sleeping Gods, you and up to 3 friends become Captain Sofi Odessa and her crew, lost in a strange world in 1929 on your steamship, the Manticore. You must work together to survive, exploring exotic islands, meeting new characters, and seeking out the totems of the gods so that you can return home.

    Sleeping Gods is a campaign game. Each session can last as long as you want. When you are ready to take a break, you mark your progress on a journey log sheet, making it easy to return to the same place in the game the next time you play. You can play solo or with friends throughout your campaign. It's easy to swap players in and out at will. Your goal is to find at least fourteen totems hidden throughout the world. Like reading a book, you'll complete this journey one or two hours at a time, discovering new lands, stories, and challenges along the way.

    Sleeping Gods is an atlas game. Each page of the atlas represents only a small portion of the world you can explore. When you reach the edge of a page and you want to continue in the same direction, you simply turn to a new page and sail onward.

    Sleeping Gods is a storybook game. Each new location holds wild adventure, hidden treasures, and vivid characters. Your choices affect the characters and the plot of the game, and may help or hinder your chances of getting home!

    Welcome to a vast world. Your journey starts now.
  END
    min_players: 1,
    max_players: 4,
    min_age: 2,
    play_time: 120,
    year: 2020,
  },
  {
    title: "Tapestry",
    designer_names: "Jaime Stegmaier",
    artist: "Andrew Bosley, Rom Brown",
    publisher: "Stonemaier Games",
    description: <<~END,
    Tapestry is a two-hour civilization game for 1-5 players designed by Jamey Stegmaier.

    Create the civilization with the most storied history, starting at the beginning of humankind and reaching into the future. The paths you choose will vary greatly from real-world events or people — your civilization is unique!

    In Tapestry, you start from nothing and advance on any of the four advancement tracks (science, technology, exploration, and military) to earn progressively better benefits. You can focus on a specific track or take a more balanced approach. You will also improve your income, build your capital city, leverage your asymmetric abilities, earn victory points, and gain tapestry cards that will tell the story of your civilization.
  END
    min_players: 1,
    max_players: 5,
    min_age: 2,
    play_time: 120,
    year: 2019,
  },
  {
    title: "The Ancient World",
    designer_names: "Ryan Laukat",
    artist: "Ryan Laukat",
    publisher: "Red Raven Games",
    description: <<~END,
    In an ancient world forgotten by time, enormous titans terrorize the land. Five tribes have been fleeing from the titans for centuries, but things are about to change. Growing city-states pledge to end the reign of terror, determined to take on the titans and make the world a safer place for all. Each city-state competes to attract the tribes, eager for the strength of the combined peoples, who are now leaving behind old traditions with the hope that the titans can be defeated once and for all.

    In The Ancient World, players compete to grow the largest and most influential city-state by managing citizens, treasury, and military and by defeating titans. Players take turns sending citizens to take special actions or using military cards to attack titans. One of the actions a citizen can perform is to build Empire cards, which give more citizens, money, and abilities.

    A city-state's influence in the world is measured by sets of tribe banners that it owns. Each Empire card has one or more tribe banners, and tribe banners can also be gained by defeating titans. Players gain victory points (VPs) for sets of tribe banners. After six rounds, the player with the most VPs from sets of tribe banners wins.
  END
    min_players: 2,
    max_players: 4,
    min_age: 2,
    play_time: 90,
    year: 2019,
  },
  {
    title: "Cottage Garden",
    designer_names: "Uve Rosengerg",
    artist: "Andrea Boekhoff",
    publisher: "Stronghold Games",
    description: <<~END,
    In Cottage Garden, you compete in the art of gardening and are working two beds with a variety of flowers. Whenever no unplanted box is visible on a bed, you have completed it, then you count your points and replace it with a fresh, unplanted bed. You gain points for all of the visible plant pots and planting bells.

    In more detail, players select various polyomino tiles of flower beds from a central market grid, depending on the location of the "gardener", then place them on one of their two personal garden boards. Each board has several garden elements that are worth points when not planted over, and these are scored on two different tracks as soon as a garden has been finished. Crossing over a line on each track awards bonus tokens that can fill in empty spaces or give you a better selection of the flower bed tiles. Whenever a garden is finished, you receive a new one to complete. After the gardener completes her fifth lap around the market, the game enters its last round. The player with the most points from their completed gardens at the end of the game wins.

    Cottage Garden is the first part of Uwe Rosenberg's puzzle trilogy.
  END
    min_players: 1,
    max_players: 4,
    min_age: 2,
    play_time: 60,
    year: 2016,
  },
  {
    title: "Dale of Merchants",
    designer_names: "Sami Laakso",
    artist: "Sami Laakso",
    publisher: "Devir",
    description: <<~END,
    It is an age of great discoveries. New and wonderful items find their ways into the hands of the greatest merchants. And if there ever is a place those traders love, it is the town of Dale.

    There’s an extraordinary guild in the Dale founded by the greatest merchants. The tricky part is getting the membership since one must win the annual trading competition to be invited to the guild.

    Notable animalfolk merchants from all over the world have gathered in the town to take part in the event. Everyone has only one goal in mind – to be celebrated as the winner and the newest member of the legendary guild.

    In Dale of Merchants, players take the roles of those participating merchants learning new techniques, trading goods, and managing their stock. The player who first manages to complete their astounding merchant stall wins the game and gets access to the guild!
  END
    min_players: 2,
    max_players: 4,
    min_age: 2,
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
