extends Node2D

var velocidade = 90
#posicao max esquerda 39
#posicao max direita 990
#posicao de inicio 503,512

func _ready():
	pass

func _process(delta):
	var dirX = 0
	
	if Input.is_action_pressed("ui_left"):
		dirX = -5
	if Input.is_action_pressed("ui_right"):
		dirX = 5
	translate(Vector2(dirX,0) * velocidade * delta)
	
	global_position.x = clamp(global_position.x, 39, 990)

func _on_meteoro_body_entered(body):
	if body == $".":
		get_tree().change_scene("res://perdeu.tscn")

func _on_Area2D_body_entered(body):
	if str(body).find("meteorO6") >= 0:
		pass
