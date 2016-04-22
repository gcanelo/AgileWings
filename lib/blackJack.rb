class BlackJack
	def initialize
		@listaCartas = Array.new
		@listaCartasB = Array.new
		@mazo = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10]		
		@totalJuego = 0
		@carta = 0
		@totalBanca = 0
	end	

	def bienvenida
		return "Bienvenido a Black Jack 2.0"
	end

	def pedirCarta
		@carta = @mazo[rand(@mazo.length)] #escoger carta del mazo
		if @mazo.length > 0
			@mazo.delete(@carta) #se saca carta del mazo
			@totalJuego += @carta
			@listaCartas.push @carta
			return @carta
		else
			return "No hay mas cartas"
		end		
		
	end

	def cargarBanca #Juega la banca
		@totalBanca = rand(17..21)
		return @totalBanca
	end

	def cartasMazo	
		return @mazo.length
	end
	
	def rescatarBanca 
		return @totalBanca
	end
	
	def rescatarJuego
		return @totalJuego
	end

	def listarCartas
		return @listaCartas
	end

end
