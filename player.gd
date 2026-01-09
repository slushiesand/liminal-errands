extends CharacterBody2D


const SPEED = 100.0
const JUMP_VELOCITY = -600.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
		$AnimatedSprite2D.animation = "walk"
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if is_on_floor() and not direction:
		$AnimatedSprite2D.animation = "idle"
	elif not is_on_floor():
		velocity += get_gravity() * delta
		$AnimatedSprite2D.animation = "jump"

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
		

	move_and_slide()
