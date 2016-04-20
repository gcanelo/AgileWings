require_relative "../lib/blackJack.rb"

describe "BlackJack" do
	it "Mostrar Bienvenida" do
		game = BlackJack.new
		game.bienvenida.should == "Bienvenido a BlackJack"
	end

	it "cargar Banca" do
		game = BlackJack.new
		game.cargarBanca.should == 18
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
