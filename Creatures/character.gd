extends CharacterBody2D

var speed = 200
func _process(_delta):
	look_at(get_global_mouse_position())
	var direction = Input.get_vector("Left","Right","Up","Down")
	velocity = direction * speed
	move_and_slide()
	
	for body in $Area2D.get_overlapping_bodies():
		if "interact_with_light" in body:
			body.interact_with_light()
