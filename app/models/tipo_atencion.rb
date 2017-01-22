class TipoAtencion < ApplicationRecord
  self.table_name ="tipo_atenciones"
  has_many :atenciones , :class_name => :Atencion, :foreign_key => "atencion_id"
end
