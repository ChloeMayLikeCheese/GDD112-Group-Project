extends CharacterBody2D

var move_speed = -500
var chasing = false
func _physics_process(_delta):
	if chasing:
		#global_position.move_toward($"../../Character".global_position, delta * 100)
		
		var player = $"../../Character"
		
		velocity = (self.global_position - player.global_position).normalized() * move_speed
		move_and_slide()
		

func interact_with_light():
	visible = false
	$CollisionShape2D.disabled = true

func _on_timer_timeout():
	chasing = true
