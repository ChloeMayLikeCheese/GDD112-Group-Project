extends CharacterBody2D



var speed = 200
func _process(_delta):
	var direction = Input.get_vector("Left","Right","Up","Down")
	velocity = direction * speed
	move_and_slide()
	

func get_last_mouse_pos():
	pass

