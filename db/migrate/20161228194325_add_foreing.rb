class AddForeing < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :atenciones, :tipo_atenciones, column: :tipo_atencion_id, primary_key: :id
    add_foreign_key :atenciones, :mascotas, column: :mascota_id, primary_key: :id
    add_foreign_key :atenciones, :mhs, column: :mh_id, primary_key: :id

    add_foreign_key :mascotas, :duenos, column: :dueno_id, primary_key: :id
    add_foreign_key :mascotas, :tipo_mascotas, column: :tipo_mascota_id, primary_key: :id

    add_foreign_key :mhs, :medicos, column: :medico_id, primary_key: :id
    add_foreign_key :mhs, :estados, column: :estado_id, primary_key: :id
    add_foreign_key :mhs, :horarios, column: :horario_id, primary_key: :id
  end
end
