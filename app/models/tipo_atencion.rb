class TipoAtencion < ApplicationRecord
  self.table_name ="tipo_atenciones"
  has_many :tipoAtenciones
end
