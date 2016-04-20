require_relative "../lib/blackJack.rb"

describe "BlackJack" do
	it "Mostrar Bienvenida" do
		game = BlackJack.new
		game.bienvenida.should == "Bienvenido a BlackJack"
	end

	it "pedir carta" do
		game = BlackJack.new
		game.pedirCarta.should <= 5
	end
	
	it "cargar Banca" do
		game = BlackJack.new
		game.cargarBanca.should == "18"
	end

end
