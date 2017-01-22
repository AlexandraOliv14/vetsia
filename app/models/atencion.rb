class Atencion < ApplicationRecord
  self.table_name=  "atenciones"
  belongs_to :tipo_atencion
  belongs_to :mascota
  belongs_to :mh
end
