class AddforeingHorario < ActiveRecord::Migration[5.0]
  def change
    add_column :horarios, :dia_id, :integer
    add_column :horarios, :bloque_id, :integer

    add_foreign_key :horarios, :dias, column: :dia_id, primary_key: :id
    add_foreign_key :horarios, :bloques, column: :bloque_id, primary_key: :id
  end
end
