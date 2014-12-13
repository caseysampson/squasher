# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Player.create(firstname: 'Jan', lastname: 'de Graad', email: 'jan@mail.com')
Player.create(firstname: 'Casey', lastname: 'Sampson', email: 'casey@mail.com')
Player.create(firstname: 'Dr.Chris', lastname: 'Greenwood', email: 'dr.Greenwood@mail.com')

Match.create(start_time: '2014-12-13 10:00:00', end_time: '2014-12-13 11:00:00')
Game.create(match_id: 1, game_number: 1)
Rally.create(game_id: 1, rally_number: 1, server_id: '1', served_from: 'R', winner_id: 1, result: 'Point' )
Rally.create(game_id: 1, rally_number: 2, server_id: '1', served_from: 'L', winner_id: 1, result: 'Point' )
Rally.create(game_id: 1, rally_number: 3, server_id: '1', served_from: 'R', winner_id: 1, result: 'Point' )
Rally.create(game_id: 1, rally_number: 4, server_id: '1', served_from: 'L', winner_id: 1, result: 'Point' )
Rally.create(game_id: 1, rally_number: 5, server_id: '1', served_from: 'R', winner_id: 1, result: 'Point' )
Rally.create(game_id: 1, rally_number: 6, server_id: '1', served_from: 'L', winner_id: 1, result: 'Point' )
Rally.create(game_id: 1, rally_number: 7, server_id: '1', served_from: 'R', winner_id: 1, result: 'Point' )
Rally.create(game_id: 1, rally_number: 8, server_id: '1', served_from: 'L', winner_id: 1, result: 'Point' )
Rally.create(game_id: 1, rally_number: 9, server_id: '1', served_from: 'R', winner_id: 1, result: 'Point' )
