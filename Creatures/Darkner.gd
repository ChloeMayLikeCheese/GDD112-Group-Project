extends CharacterBody2D

func _process(delta):
	pass



func interact_with_light():
	visible = false
	$CollisionShape2D.disabled = true
