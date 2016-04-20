class BlackJack
	def initialize
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
		@mazo.delete(@carta)
		@totalJuego += @carta
		return @carta
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

end
