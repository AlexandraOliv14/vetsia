class Atencion < ApplicationRecord
  self.table_name=  "atenciones"
  belongs_to :tipoAtencion
  belongs_to :mascota
  belongs_to :mh
end
