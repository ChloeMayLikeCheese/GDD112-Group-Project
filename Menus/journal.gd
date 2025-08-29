extends CanvasLayer

var Journal_open = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Journal"):
		Journal()
func Journal():
	if Journal_open:
		$"..".hide()
	else:
		$"..".show()
