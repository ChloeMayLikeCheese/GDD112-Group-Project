extends Node2D
signal god_help_us_all



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	look_at(get_global_mouse_position())


func _on_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	god_help_us_all.emit()
