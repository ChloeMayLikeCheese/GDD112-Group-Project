extends Node2D
signal god_help_us_all
signal breather_flashlight
#this is a flashlight designed to stop evil monsters (batteries sold separately (you may need batteries for the batteries))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	look_at(get_global_mouse_position())
	for body in $".".get_overlapping_bodies():
		if not body is CharacterBody2D:
			continue
		if body.has_method("in_flashlight"):
			print("do something")
			body.in_flashlight()


func _on_area_shape_entered(_area_rid, _area, _area_shape_index, _local_shape_index):
	god_help_us_all.emit()
	
