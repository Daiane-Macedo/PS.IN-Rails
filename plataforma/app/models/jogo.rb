class Jogo < ApplicationRecord
	has_many :user_jogos
	belongs_to :console
end
