# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "creo algunos productos"
Product.find_or_create_by(nombre: "lavarropa", category_id: "1", user_id: "1", descripcion: "maquina para lavar la ropa", foto: "http://www.visitacasas.com/wp-content/uploads/2010/04/lavarropas_5.jpg" )