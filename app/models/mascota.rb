class Mascota < ApplicationRecord
  self.table_name = "mascotas"
  belongs_to :dueno
  belongs_to :tipo_mascota
end
