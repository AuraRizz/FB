extends Node2D

#func _ready() -> void:
#	for Murs: Area2D in $Murs.get_children():
#		detector.body_entered.connect(_on_detector_entered)
		

@onready var flappy = $CharacterBody2D
@onready var nous_murs = $Nous_Murs
@export var escena_mur = preload("res://Escenes/Murs colisio.tscn")
var x_posicio = 0
var distancia_entre_murs = 300.
var ultima_x = 0.

func _ready():
	ultima_x = $Mur.position.x
	print(ultima_x)
func _process(delta):
	crea_mur(x_posicio)

func crea_mur(x_posicio):
	var mur_nou = escena_mur.instantiate()
	nous_murs.add_child(mur_nou)
	x_posicio = ultima_x + distancia_entre_murs 
