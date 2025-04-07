extends Node2D

func _ready() -> void:
	for Murs: Node2D in $Murs.get_children():
		for detector: Area2D in 
		detector.body_entered.connect(_on_detector_entered)
		
func _on_detector_entered(body)->void:
	pass
