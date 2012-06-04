
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

friends = Friend.create([ { name: 'Pablo',  lat: 1,   long: 1 },
                        { name: 'Maria',  lat: 10,  long: 100 },
                        { name: 'Marco',   lat: 6,   long: 56 },
                        { name: 'Marta',   lat: 61,  long: 46 },
                        { name: 'Pedro',  lat: 21,  long: 48 },
                        { name: 'Carlos', lat: 41,  long: 34 },
                        { name: 'Fred',   lat: 31,  long: 18 }
                        ])
