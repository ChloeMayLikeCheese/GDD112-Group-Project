extends Control
@export var start_game:String

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_start_pressed():
	get_tree().call_deferred("change_scene_to_file",start_game)


func _on_stettings_pressed():
	pass # Replace with function body.


func _on_exit_pressed():
	get_tree().quit()
