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

TipoAtencion.create!([{descripcion: 'Control'},
    {descripcion: 'Operacion'},
    {descripcion: 'Energencia'}])
  
Bloque.create!([{descripcion: '08:00 a 08:20'},
  {descripcion: '08:21 a 08:41'},
  {descripcion: '08:42 a 09:02'},
  {descripcion: '09:03 a 09:23'},
  {descripcion: '09:24 a 08:44'},
  {descripcion: '09:45 a 10:05'},
  {descripcion: '10:06 a 10:26'},
  {descripcion: '10:27 a 10:47'},
  {descripcion: '10:48 a 11:08'},
  {descripcion: '11:09 a 11:29'},
  {descripcion: '11:30 a 11:50'},
  {descripcion: '11:51 a 12:11'},
  {descripcion: '12:12 a 12:32'},
  {descripcion: '12:53 a 13:13'},
  {descripcion: '13:14 a 12:34'},
  {descripcion: '13:35 a 13:55'},
  {descripcion: '13:56 a 14:16'},
  {descripcion: '14:17 a 14:37'},
  {descripcion: '14:38 a 14:58'},
  {descripcion: '14:59 a 15:19'},
  {descripcion: '15:20 a 15:40'},
  {descripcion: '15:41 a 16:01'},
  {descripcion: '16:02 a 16:22'},
  {descripcion: '16:23 a 16:43'},
  {descripcion: '16:44 a 17:14'},
  {descripcion: '17:15 a 17:35'}
  ]
  )
