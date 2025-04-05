extends Node2D
var distancia_reutilitzar: float = 1500.0
var distancia_entre_murs: float = 300.0
@onready var mur = $"."
@onready var flappy = $"../../CharacterBody2D"

	
func _process(delta: float) -> void:
	moure()
	
func moure():
	var distancia_fins_jugador = float(mur.position.x) - float(flappy.position.x)
	if distancia_fins_jugador < -distancia_reutilitzar:
		mur.position.x += 2610
	
