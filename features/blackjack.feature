Feature: Blackjack

Scenario: Ver el titulo
	Given Voy al inicio
	Then Veo "Blackjack"

Scenario: Inicio juego
	Given Voy al inicio
	Then Veo "#"
	Then Veo "Sin cartas"

Scenario: Ver cartas en 16
	Given Voy al inicio
	When Presiono boton Pide Carta
	Then Veo 16

Scenario: Ver perdedor
	Given Voy al inicio
	When Presiono boton Pide Carta
	And Presiono boton Quedarse
	Then Veo "PERDEDOR"

Scenario: Volver a Inicio
	Given Voy al inicio
	When Presiono boton Pide Carta
	And Presiono boton Pide Carta
	And Presiono boton Quedarse
	When Presiono link Nuevo Juego
	Then Veo "Sin cartas"
