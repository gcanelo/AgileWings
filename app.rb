require 'sinatra'


get '/' do
	@contador = "Sin cartas"
	@resultado = ""	
	@banca = "18"	
	erb :blackjack
end

get '/jugar' do
	@contador = "5"		
	erb :blackjack
end

post '/jugar' do
	@contador = "21"
	@banca = "18"
	erb :blackjack
end

post '/quedarse' do
	@banca = "18"
	@contador = "21"
	if @contador.to_i >= @banca.to_i 
		@resultado = "GANADOR" 
	else
		@resultado = "PERDEDOR"	
	end	
	erb :blackjack
end
