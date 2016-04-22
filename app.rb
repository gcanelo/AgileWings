require 'sinatra'
require_relative "./lib/blackJack.rb"


get '/' do
	@carta = "#"
	@banca = "?"
	@CartasSolicitadas = ""
	@@game = BlackJack.new
	@contador = "Sin cartas"
	erb :blackjack
end

get '/jugar' do
	@@game.pedirCarta
	@contador = @@game.rescatarJuego
	@CartasSolicitadas = @@game.listarCartas.join "-"	
	erb :blackjack
end

post '/jugar' do
	@banca = "?"
	@carta = @@game.pedirCarta	
	@contador = @@game.rescatarJuego
	@CartasSolicitadas = @@game.listarCartas.join "-"
	if @contador > 21
		@carta = ""
		@resultado = "PERDEDOR"
	end
	erb :blackjack
end

post '/quedarse' do
	@banca = @@game.cargarBanca	
	@contador = @@game.rescatarJuego
	@CartasSolicitadas = @@game.listarCartas.join "-"
	if @contador > @banca and @contador < 22
		@resultado = "GANADOR"
	else
		if @contador == @banca
			@resultado = "EMPATE"
		else
			@resultado = "PERDEDOR"
		end		
	end	
	erb :blackjack
end
