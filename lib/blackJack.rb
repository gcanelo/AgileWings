class BlackJack
	def initialize
		@listaCartas = Array.new
		@mazo = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]		
		@totalJuego = 0
		@carta = 0
		@totalBanca = 0
	end	

	def bienvenida
		return "Bienvenido a BlackJack"
	end

	def pedirCarta
		@carta = @mazo[rand(@mazo.length)]
		if @mazo.length > 0
			@mazo.delete(@carta)
			@totalJuego += @carta
			@listaCartas.push @carta
			return @carta
		else
			return "No hay mas cartas"
		end		
		
	end

	def cargarBanca
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
