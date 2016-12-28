class CreateAtencions < ActiveRecord::Migration[5.0]
  def change
    create_table :atenciones do |t|
      t.datetime :fecha
      t.integer :tipo_atencion_id
      t.integer :mascota_id
      t.integer :mh_id
      t.timestamps
    end
  end
end
