require 'sinatra'
require_relative "./lib/blackJack.rb"


get '/' do
	@@game = BlackJack.new
	@contador = "Sin cartas"
	erb :blackjack
end

get '/jugar' do
	@contador = @@game.pedirCarta		
	erb :blackjack
end

post '/jugar' do
	@contador = @@game.pedirCarta	
	erb :blackjack
end

post '/quedarse' do
	@banca = @@game.cargarBanca	
	@contador = @@game.rescatarJuego
	if @contador >= @banca and @contador < 22
		@resultado = "GANADOR" 
	else
		@resultado = "PERDEDOR"	
	end	
	erb :blackjack
end
