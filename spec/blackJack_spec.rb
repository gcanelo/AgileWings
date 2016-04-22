require_relative "../lib/blackJack.rb"

describe "BlackJack" do
	it "Mostrar Bienvenida" do
		game = BlackJack.new
		game.bienvenida.should == "Bienvenido a BlackJack"
	end

	it "cargar Banca mayor a 16" do
		game = BlackJack.new
		game.cargarBanca.should > 16
	end

	it "cargar Banca mayor a 22" do
		game = BlackJack.new
		game.cargarBanca.should < 22
	end

	it "pedir primera carta" do
		game = BlackJack.new
		game.pedirCarta 
		game.cartasMazo.should == 9
	end
	
	it "pedir segunda carta" do
		game = BlackJack.new
		game.pedirCarta
		game.pedirCarta
		game.cartasMazo.should == 8
	end

	it "rescatar total Banca" do
		game = BlackJack.new
		game.cargarBanca
		game.rescatarBanca.should >= 17 and game.rescatarBanca.should <= 21
	end
		
	it "rescatar Juego" do
		game = BlackJack.new
		game.pedirCarta
		game.pedirCarta
		game.rescatarJuego.should >= 3 and game.rescatarJuego.should <= 21
	end

	it "contar cartas listadas" do
		game = BlackJack.new
		game.pedirCarta
		game.pedirCarta
		game.pedirCarta
		game.listarCartas.count.should == 3
	end

	it "listar cartas" do
		game = BlackJack.new
		game.pedirCarta
		game.pedirCarta
		game.pedirCarta
		@cartas = game.listarCartas
		game.listarCartas.should == @cartas
	end

	it "sacar todas las cartas" do
		game = BlackJack.new
		game.pedirCarta
		game.pedirCarta
		game.pedirCarta
		game.pedirCarta
		game.pedirCarta
		game.pedirCarta
		game.pedirCarta
		game.pedirCarta
		game.pedirCarta
		game.pedirCarta
		game.pedirCarta.should == "No hay mas cartas"
	end

end
