json.extract! jogo, :id, :nome, :estilo, :preco, :produtora, :created_at, :updated_at
json.url jogo_url(jogo, format: :json)