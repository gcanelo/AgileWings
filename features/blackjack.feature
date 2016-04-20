Feature: Blackjack

Scenario: Ver el titulo
	Given Voy al inicio
	Then Veo "Blackjack"

Scenario: Inicio juego
	Given Voy al inicio
	Then Veo "Sin cartas"

Scenario: Ver cartas en 5
	Given Voy al inicio
	When Presiono link Pide Carta
	Then Veo "5"

Scenario: Ver cartas en 5
	Given Voy al inicio
	When Presiono boton Pide Carta
	Then Veo "21"

Scenario: Ver perdedor
	Given Voy al inicio
	When Presiono boton Pide Carta
	And Presiono boton Quedarse
	Then Veo "GANADOR"
