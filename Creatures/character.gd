extends CharacterBody2D
signal flashlight
@onready var CharacterAnimation = $CharacterAnimations

var speed = 200
#Player movement animations!!!!
func _process(_delta):
	var direction = Input.get_vector("Left","Right","Up","Down")
	velocity = direction * speed
	move_and_slide()
	if Input.is_action_pressed("Right"):
		CharacterAnimation.play("WalkRight")
	if Input.is_action_pressed("Left"):
		CharacterAnimation.play("WalkLeft")
	if Input.is_action_pressed("Up"):
		CharacterAnimation.play("WalkUp")
	if Input.is_action_pressed("Down"):
		CharacterAnimation.play("WalkDown")
	if Input.is_action_just_released("Right"):
		CharacterAnimation.play("RightIdle")
	if Input.is_action_just_released("Left"):
		CharacterAnimation.play("LeftIdle")
	if Input.is_action_just_released("Up"):
		CharacterAnimation.play("UpIdle")
	if Input.is_action_just_released("Down"):
		CharacterAnimation.play("DownIdle")
	
	
func get_last_mouse_pos():
	pass





func _on_flashlight_god_help_us_all():
	flashlight.emit() 
