extends CharacterBody2D

@onready var pause_menu = $PauseMenu
var paused = false
var speed = 200
func _process(_delta):
	var direction = Input.get_vector("Left","Right","Up","Down")
	velocity = direction * speed
	move_and_slide()
	
#pause menu (from a youtube tutorial from Gwizz
	if Input.is_action_just_pressed("Pause"):
		pausemenu()
		
func pausemenu():
	var last_mouse_direction = get_global_mouse_position()
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		look_at(last_mouse_direction)
		pause_menu.show()
		Engine.time_scale = 0
	
	paused = !paused
func get_last_mouse_pos():
	pass

