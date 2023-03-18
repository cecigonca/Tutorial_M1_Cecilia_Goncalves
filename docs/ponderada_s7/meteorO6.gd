extends KinematicBody2D

func _ready():
	pass # Replace with function body.

func _process(delta):
	move_local_y(10)

func _on_Area2D_body_entered(body):
	if body == $".":
		print ("venceu")
		get_tree().change_scene("res://ganhou.tscn")
	pass # Replace with function body.
