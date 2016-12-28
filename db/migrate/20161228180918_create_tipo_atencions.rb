class CreateTipoAtencions < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_atencions do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
