# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "creao algunas categorias"
Category.find_or_create_by(nombre: "Tecnología")
Category.find_or_create_by(nombre: "Ropa y Accesorios")
Category.find_or_create_by(nombre: "Animales")
Category.find_or_create_by(nombre: "Antigüedades")
Category.find_or_create_by(nombre: "Alimentos")
Category.find_or_create_by(nombre: "Otros")

puts "creo algunos productos"
Product.find_or_create_by(nombre: "Lavarropa", category_id: "1", user_id: "1", descripcion: "Maquina para lavar la ropa", foto: "http://www.visitacasas.com/wp-content/uploads/2010/04/lavarropas_5.jpg" )
Product.find_or_create_by(nombre: "Guantes de acero", category_id: "2", user_id: "1", descripcion: "Guantes de malla de acero inox. tejido, anticorte, marca *manulex* de industria francesa", foto: "http://40.media.tumblr.com/6bc78e251e463fb68362d168fcf38bda/tumblr_nbqngpEAks1tlipbuo1_1280.jpg" )
Product.find_or_create_by(nombre: "Llama", category_id: "3", user_id: "1", descripcion: "Llama adulta oriunda de Tilcara. Es mansita", foto: "http://41.media.tumblr.com/6750bde49985d14340294b65cbfac7a2/tumblr_nbsedz4pML1tlipbuo1_1280.jpg" )
Product.find_or_create_by(nombre: "Espejo", category_id: "4", user_id: "1", descripcion: "Espejo sin marco. Medidas: 0,8m x 1,2m", foto: "http://41.media.tumblr.com/ad056adadfeeced7f24f918a843a0f60/tumblr_nbsf4rGZFE1tlipbuo1_1280.jpg" )
Product.find_or_create_by(nombre: "Kriptonita", category_id: "6", user_id: "1", descripcion: "200g de Kriptonita", foto: "http://41.media.tumblr.com/8e08757ed8fd1c3368e29dc127140ef1/tumblr_nbsewqvU231tlipbuo1_1280.jpg" )
Product.find_or_create_by(nombre: "Aceite y Vinagre", category_id: "5", user_id: "1", descripcion: "200ml de aceite y 300ml de vinagre. No incluye frascos", foto: "http://40.media.tumblr.com/f92d39b2c62cf2bc5398797db35ce37d/tumblr_nbsejfmSt21tlipbuo1_400.jpg" )
