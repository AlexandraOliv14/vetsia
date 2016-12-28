class CreateMhs < ActiveRecord::Migration[5.0]
  def change
    create_table :mhs do |t|
      t.integer :medico_id
      t.integer :estado_id
      t.integer :horario_id

      t.timestamps
    end
  end
end
