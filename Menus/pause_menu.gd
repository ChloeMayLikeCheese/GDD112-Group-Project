extends Control

@onready var main = $"../"

func _on_settings_pressed():
	pass # Replace with function body.


func _on_quit_pressed():
	get_tree().quit()


func _on_resume_pressed():
	main.pausemenu()
