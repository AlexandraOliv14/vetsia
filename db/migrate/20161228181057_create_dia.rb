class CreateDia < ActiveRecord::Migration[5.0]
  def change
    create_table :dia do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
