extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var velocitat = 400
var velocitat_angular = 30
var direccio = Vector2(0,0)
#var velocitat = Vector2(200,0) #Vector2(200,0) la podem definir com una variable


# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(500,300)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
	direccio = Vector2.ZERO
	if Input.is_action_pressed("Adalt"):
		direccio += Vector2(0,-1)
	if Input.is_action_pressed("Abaix"):
		direccio += Vector2(0,1)
	if Input.is_action_pressed("Dreta"):
		direccio += Vector2(1,0)
	if Input.is_action_pressed("Esquerra"):
		direccio += Vector2(-1,0)
		
	position += direccio.normalized() * velocitat * delta 
	#position += velocitat * delta #delta son els segons que han passat
	#rotation_degrees += 30 * delta
	#$Segon.rotation_degrees += velocitat_angular
	
	#if position.x >= 1000 or position.x <= 0:
		#velocitat.x = -velocitat.x
	#if position.y >= 600 or position.y <= 0:
		#velocitat.y = -velocitat.y
		
