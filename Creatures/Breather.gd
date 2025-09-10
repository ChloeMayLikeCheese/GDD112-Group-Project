extends CharacterBody2D

const MAX_DISTANCE = 500
const MIN_DISTANCE = 100
var aggro_counter = 0
@export var targetable = false
#the breather will hide in the darkness.
#when the light is shone on it, the mask will break,
#there should probably be a grace period so quick movements don't anger it too much.

#a way for it to spawn in
#a way for it to walk around

#the breather will appear with a flash, and then it will slowly fade away.
#if the mask breaks, it will disappear. A random timer will start counting down, until it appears, and jumpscares you.
#will make sounds that start quiet, will get louder as the timer goes down.

#some sort of jumpscare.

#TODO: make the mask glow


func _process(_delta):
	
	#print("Doing stuff")
	#print(global_position)
	#print($"../../Character".global_position)
	
	#else, decrease counter by some smaller amount
	aggro_counter -= 0.5
	aggro_counter = clamp(aggro_counter, 0, 30)
	#if aggro counter is at max (or some value, play the mask breaking animation.
	if aggro_counter > 30:
		if $AnimationPlayer.current_animation == "appear":
			$AnimationPlayer.play("mask_breaks")


func teleport():
	#find some random position around the player. (for now, don't worry about if the position is actually IN the room)
	var x_offset = (randi()%(MAX_DISTANCE - MIN_DISTANCE)) + MIN_DISTANCE
	if randi()%2 == 1:
		x_offset *= -1
	var y_offset = (randi()%(MAX_DISTANCE - MIN_DISTANCE)) + MIN_DISTANCE
	if randi()%2 == 1:
		y_offset *= -1
	var offset = Vector2(x_offset, y_offset)
	#take player's position, target position = player positon +/- (some random number)
	global_position = $"../../Character".global_position + offset
	#set the position to tsahat location
	#play the appear animation again.
	print(global_position)
	$AnimationPlayer.play("appear")
	
	#TODO: make this run a timer instead. Only teleport when this timer is up.
	


func attack():
	$AttackTimer.start()
	
	#start the timer for the jumpscare
	pass
	
#TODO: create a timer for the jumpscare
#on this timer timing oudaaat, play the jumpscare animation and kill the player

func in_flashlight():
		#check if the player's flashlight is on top of self
	#if it is, increase aggro counter by some amount
	if targetable:
		aggro_counter = aggro_counter + 1
		print("targetable")

func _on_attack_timer_timeout():
	pass # Replace with function body.
