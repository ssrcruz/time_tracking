# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 a = Developer.create(name: 'Ruben', email: 'tiy@aol.com', password: 'password' )
 Developer.create(name: 'AU', email: 'au@aol.com', password: 'password')

 b = Project.create(name: 'Rails', max_hours: '3')

 TimeEntry.create(developer_id: a.id, project_id: b.id, duration: 3, worked_on: Date.today  )
