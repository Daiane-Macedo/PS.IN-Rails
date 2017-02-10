class CreateJogos < ActiveRecord::Migration[5.0]
  def change
    create_table :jogos do |t|
      t.string :nome
      t.string :estilo
      t.float :preco
      t.string :produtora

      t.timestamps
    end
  end
end
