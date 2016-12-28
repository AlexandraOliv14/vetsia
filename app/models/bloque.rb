class Bloque < ApplicationRecord
  self.table_name = "bloques"
  has_many :horarios
end
