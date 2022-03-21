extends KinematicBody2D

var velocitat_base = 200
var velocitat = Vector2.ZERO
var direccio = Vector2.DOWN
var gravetat = Vector2.DOWN * 980
var velocitat_salt = -300

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