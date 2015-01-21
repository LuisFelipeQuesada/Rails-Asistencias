class CreateTipoAsistencia < ActiveRecord::Migration
  def change
    create_table :tipo_asistencia do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
