extends CharacterBody2D

var gravetat := Vector2.DOWN * 988
var SALTS := -500
var velocitat = 200

func _process(delta: float) -> void:
	velocity.x = velocitat 
	
	
	
	if Input.is_action_just_pressed("SALTAR"):
		velocity.y = SALTS
	velocity += gravetat * delta
	move_and_slide()
