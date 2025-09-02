extends CanvasLayer

var Journal_open = false

func _process(_delta):
	if Input.is_action_just_pressed("Journal"):
		Journal()
func Journal():
	if Journal_open:
		$".".hide()
		Journal_open = false
	else:
		$".".show()
		Journal_open = true
