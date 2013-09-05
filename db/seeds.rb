# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create({username: 'user', password: 'pass', token: 'token'})
profile = Profile.create ({name:'Nombre', last_name:'Apellido', user: user})
board = Board.create({name: 'main', user: user})
column1 = Column.create({name: 'To do', board: board})
column2 = Column.create({name: 'Done', board: board} )
task1 = Task.create({name: 'Decir chao' , description: '' , column: column1} )
task2 = Task.create({name: 'decir hola' , description: '' , column: column2} )