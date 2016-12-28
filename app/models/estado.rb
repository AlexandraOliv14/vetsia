class Estado < ApplicationRecord
  self.table_name  = "estados"
  has_many :mhs
end
