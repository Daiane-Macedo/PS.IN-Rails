class CreateConsoles < ActiveRecord::Migration[5.0]
  def change
    create_table :consoles do |t|
      t.string :nome
      t.string :midia
      t.float :preco
      t.string :fabricante
      t.string :lancamento
      t.string :date

      t.timestamps
    end
  end
end
