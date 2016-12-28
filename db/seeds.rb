# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#GRANT ALL ON vetsiadb_development.* TO vestsia@localhost IDENTIFIED BY 'butic+123';
#GRANT ALL ON vetsiadb_test.* TO vestsia@localhost IDENTIFIED BY 'butic+123';

Dia.create!([{descripcion: 'Lunes'},
  {descripcion: 'Martes'},
  {descripcion: 'Miercoles'},
  {descripcion: 'Jueves'},
  {descripcion: 'Viernes'},
  {descripcion: 'Sabado'},
  {descripcion: 'Domingo'}]
  )
