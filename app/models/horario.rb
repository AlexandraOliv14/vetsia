class Horario < ApplicationRecord
  self.table_name = "horarios"
  belongs_to :dia
  belongs_to :bloque
  has_many :mhs
end
