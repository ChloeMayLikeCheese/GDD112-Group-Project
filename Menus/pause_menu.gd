extends Control
@export var start_game:String
@onready var main = $"../"
var paused = false
func _on_settings_pressed():
	pass # Replace with function body.


func _on_quit_pressed():
	get_tree().call_deferred("change_scene_to_file",start_game)
	Engine.time_scale = 1
	
	
func _process(_delta):
	print("buh")
	#pause menu (from a youtube tutorial from Gwizz
	if Input.is_action_just_pressed("Pause"):
		pausemenu()
		
func pausemenu():
	print(paused)
	if paused:
		$"..".hide()
		Engine.time_scale = 1
	else:
		$"..".show()
		Engine.time_scale = 0
	
	paused = !paused

func _on_resume_pressed():
	pausemenu()
