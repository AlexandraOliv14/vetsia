class Atencion < ApplicationRecord
  self.table_name=  "atenciones"
  belongs_to :tipoatencion
  belongs_to :mascota
  belongs_to :mh
end
