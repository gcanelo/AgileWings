require 'sinatra'
require_relative "./lib/blackJack.rb"


get '/' do
	@carta = "#"
	@banca = "?"
	@@game = BlackJack.new
	@contador = "Sin cartas"
	erb :blackjack
end

get '/jugar' do
	@@game.pedirCarta
	@contador = @@game.rescatarJuego		
	erb :blackjack
end

post '/jugar' do
	@banca = "?"
	@carta = @@game.pedirCarta	
	@contador = @@game.rescatarJuego
	if @contador > 21
		@carta = ""
		@resultado = "PERDEDOR"
	end
	erb :blackjack
end

post '/quedarse' do
	@banca = @@game.cargarBanca	
	@contador = @@game.rescatarJuego	
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
