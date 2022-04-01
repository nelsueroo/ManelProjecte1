extends KinematicBody2D

var velocitat_base = 300
var velocitat = Vector2.ZERO
var direccio = Vector2.DOWN
var gravetat = Vector2.DOWN * 980
var velocitat_salt = -500

func _physics_process(delta):
	velocitat += gravetat * delta
	velocitat.x = 0
	if Input.is_action_pressed("Dreta"):
		velocitat += Vector2.RIGHT * velocitat_base
	if Input.is_action_pressed("Esquerra"):
		velocitat += Vector2.LEFT * velocitat_base
	if Input.is_action_just_pressed("Adalt") and is_on_floor():
		velocitat.y = velocitat_salt
		
	velocitat = move_and_slide(velocitat, Vector2.UP)
	anima(velocitat)

func anima(velocitat):
	if velocitat.x > 0:
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = false
	elif velocitat.x < 0:
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = true

	if abs(velocitat.x) < 0.1:
		$AnimatedSprite.play("quiet")

	if velocitat.y < 0:
		$AnimatedSprite.play("jump")


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Escenes/NodeTerra.tscn")


func _on_Punxa_body_entered(body):
	get_tree().change_scene("res://Escenes/NodeTerra.tscn")


func _on_SpikeMuerte_body_entered(body):
	get_tree().change_scene("res://Escenes/NodeTerra.tscn")


func _on_PortalPantalla_body_entered(body):
	get_tree().change_scene("res://Escenes/Pantalla2.tscn")


func _on_MuertePant2_body_entered(body):
	get_tree().change_scene("res://Escenes/Pantalla2.tscn")
