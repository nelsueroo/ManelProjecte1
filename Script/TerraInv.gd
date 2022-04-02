extends Area2D


func _on_TerraInv_body_entered(body):
	queue_free()
