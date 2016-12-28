class CreateDuenos < ActiveRecord::Migration[5.0]
  def change
    create_table :duenos do |t|
      t.string :nombre
      t.string :telefono
      t.string :mail

      t.timestamps
    end
  end
end
