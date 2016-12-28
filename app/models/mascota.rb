class Mascota < ApplicationRecord
  belongs_to :Dueno
  belongs_to :TipoMascota
end
