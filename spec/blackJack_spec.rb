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

end
