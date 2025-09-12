extends CanvasLayer
@export var start_game:String



func _on_main_menu_pressed():
	get_tree().call_deferred("change_scene_to_file",start_game)


func _on_quit_pressed():
	get_tree().quit()
