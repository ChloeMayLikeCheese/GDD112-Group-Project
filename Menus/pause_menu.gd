extends Control
@export var start_game:String
@onready var main = $"../"

func _on_settings_pressed():
	pass # Replace with function body.


func _on_quit_pressed():
	get_tree().call_deferred("change_scene_to_file",start_game)
	Engine.time_scale = 1


func _on_resume_pressed():
	main.pausemenu()
