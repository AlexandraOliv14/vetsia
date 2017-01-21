class CreateMascotas  < ActiveRecord::Migration[5.0]
  def change
    create_table :mascotas do |t|
      t.string :nombre
      t.datetime :fecha_nac
      t.integer :dueno_id
      t.integer :tipo_mascota_id

      t.timestamps
    end
  end
end
