extends Sprite

const MOVEMENT_SPEED = 50

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var input_direction = 0
	
	if Input.is_action_pressed("ui_left"):
		input_direction = -1
	elif Input.is_action_pressed("ui_right"):
		input_direction = 1
		
	position.x += input_direction * MOVEMENT_SPEED * delta
