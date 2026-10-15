extends CharacterBody2D


const SPEED = 50.0
var direction = 1

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		velocity.x = direction * SPEED
	if is_on_wall():
		direction *= -1
	move_and_slide()
	


	


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == 'player':
		body.kill()
		
		
