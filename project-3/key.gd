extends StaticBody2D
signal door_opened
var key_taken
var door_zone

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if key_taken == true:
		if door_zone == true:
			if Input.is_action_just_pressed("ui_accept"):
				print('chest opened')
				emit_signal ('chest opened')
			
			
	pass


func _on_area_2d_body_entered(body: PhysicsBody2D) -> void:
	if key_taken == false:
		key_taken = true
		$sprite.queue_free()
