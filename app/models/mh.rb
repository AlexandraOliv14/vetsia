class Mh < ApplicationRecord
  self.table_name= "mhs"
  belongs_to :medico
  belongs_to :estado
  belongs_to :horario
  has_many :atenciones
end
