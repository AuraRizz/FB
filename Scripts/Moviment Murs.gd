extends Node2D

var flappy: CharacterBody2D 

func _process(delta):
	if flappy and global_position.x < flappy.global_position.x - 800:
		queue_free()
