extends KinematicBody2D

var velocity = Vector2(0, 0)
const SPEED = 100


func _physics_process(_delta):
	
	velocity.x = 0
	velocity.y = 0
	
	if Input.is_action_pressed("RIGHT"):
		velocity.x += SPEED
	if Input.is_action_pressed("LEFT"):
		velocity.x += -SPEED
	if Input.is_action_pressed("BACKWARD"):
		velocity.y += SPEED
	if Input.is_action_pressed("FORWARD"):
		velocity.y += -SPEED
	position = position.clamped(300)
	
	
	velocity = move_and_slide(velocity)
