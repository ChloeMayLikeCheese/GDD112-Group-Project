extends CharacterBody2D
signal flashlight
var move_speed = -0
var chasing = false
func _physics_process(_delta):
#the magic that makes the evil and conniving monster move!
	if chasing:
		var player = $"../../Character"
		
		velocity = (self.global_position - player.global_position).normalized() * move_speed
		move_and_slide()
		

func _on_timer_timeout():
	chasing = true


func _on_character_flashlight():
	$Timer2.start()
	chasing = false

#Starting on a Interjacent flashlight's(TM) contact with the entity this timer does uhhm something? i think?
func _on_timer_2_timeout():
	visible = false
	$Area2D/CollisionShape2D.disabled = true
	
