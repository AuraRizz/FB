extends CharacterBody2D

var gravetat := Vector2.DOWN * 988
var SALTS := -500
var velocitat = 200
@onready var animacio_jugador = $AnimatedSprite2D

func _process(delta: float) -> void:
	velocity.x = velocitat 
	animacio()
	
	
	if Input.is_action_just_pressed("SALTAR"):
		velocity.y = SALTS
	velocity += gravetat * delta
	move_and_slide()
	print(velocity.y)
		
func animacio():
	if velocity.y < 0:
		animacio_jugador.play("Volar")
	else:
		animacio_jugador.play("Normal")
