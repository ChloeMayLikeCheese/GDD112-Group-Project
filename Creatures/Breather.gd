extends CharacterBody2D

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


func _process(delta):
	pass
	
	
	
func teleport():
	pass


func attack():
	pass
