# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create name: 'Ironhack', description: 'Ironhack is a'

Project.create name: 'time tracking app'

Project.create name: 'Puppies'

Project.create name: 'Plastic'

Project.create name: 'Kung Fu', description: 'Track my favorite kung fu.'

Project.create name: 'Herro', description: 'broh.'


Entry.create hours:4, minutes:57, project_id: 1
Entry.create hours: 2, minutes:45, project_id: 2
Entry.create hours:6, minutes:57, project_id: 3
Entry.create hours: 1, minutes:45, project_id: 4
Entry.create hours:3, minutes:57, project_id: 5
Entry.create hours: 8, minutes:45, project_id: 6