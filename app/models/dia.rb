class Dia < ApplicationRecord
  self.table_name = "dias"
  has_many :horarios
end
