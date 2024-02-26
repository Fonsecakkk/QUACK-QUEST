extends CharacterBody2D
var grav = 5
var speed = 300

func _process(delta):
	if !is_on_floor():
		velocity.y += grav
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
		$Sprite2D.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -speed
		$Sprite2D.flip_h = true
	else:
		velocity.x = 0
	if is_on_floor() and Input.is_action_just_pressed("ui_up"):
		velocity.y -= 300
	move_and_slide()
