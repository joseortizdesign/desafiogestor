class CreateGestors < ActiveRecord::Migration[7.0]
  def change
    create_table :gestors do |t|
      t.string :nombre
      t.text :descripcion
      t.string :fechacom
      t.string :fechater
      t.string :estado

      t.timestamps
    end
  end
end
