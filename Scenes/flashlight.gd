extends Node2D
signal god_help_us_all
#this is a flashlight designed to stop evil monsters (batteries sold separately (you may need batteries for the batteries))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	look_at(get_global_mouse_position())


func _on_area_shape_entered(_area_rid, _area, _area_shape_index, _local_shape_index):
	god_help_us_all.emit()
