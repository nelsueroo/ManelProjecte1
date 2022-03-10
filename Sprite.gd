extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var velocitat = Vector2(200,300)
#var velocitat = Vector2(200,0) #Vector2(200,0) la podem definir com una variable


# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(500,300)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
	position += velocitat * delta #delta son els segons que han passat
	rotation_degrees += 30 * delta

	if position.x >= 1000 or position.x <= 0:
		velocitat.x = -velocitat.x
	if position.y >= 600 or position.y <= 0:
		velocitat.y = -velocitat.y
		
