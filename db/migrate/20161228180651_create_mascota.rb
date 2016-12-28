class CreateMascota < ActiveRecord::Migration[5.0]
  def change
    create_table :mascotas do |t|
      t.string :nombre
      t.datetime :fecha_nac
      t.references :Dueno, foreign_key: true
      t.references :TipoMascota, foreign_key: true

      t.timestamps
    end
  end
end
