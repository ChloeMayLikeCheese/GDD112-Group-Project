extends CharacterBody2D

@onready var pause_menu = $PauseMenu
var paused = false

var speed = 200
func _process(_delta):
	look_at(get_global_mouse_position())
	var direction = Input.get_vector("Left","Right","Up","Down")
	velocity = direction * speed
	move_and_slide()
	
#pause menu (from a youtube tutorial from Gwizz
	if Input.is_action_just_pressed("Pause"):
		pausemenu()
		
func pausemenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
	
	paused = !paused

