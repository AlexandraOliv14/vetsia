class TipoMascota < ApplicationRecord
  self.table_name ="tipo_mascotas"
  has_many :mascotas
end
