extends CharacterBody2D


func interact_with_light():
	visible = false
	$CollisionShape2D.disabled = true
