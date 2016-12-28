class Dueno < ApplicationRecord
  self.table_name= "duenos"
  has_many :mascotas
end
