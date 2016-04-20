require_relative "../lib/blackJack.rb"

describe "BlackJack" do
	it "Mostrar Bienvenida" do
		game = BlackJack.new
		game.bienvenida.should == "Bienvenido a BlackJack"
	end

end
