extends Sprite

const SPEED = 100
var device_index = 0

func _ready():
	Input.connect("joy_connection_changed", self, "joy_connect")

func joy_connect(index, connect):
	if connect:
		device_index = index

func _process(delta):
	var direction = Vector2(0,0)
	
	if Input.is_joy_button_pressed(device_index, JOY_DPAD_UP):
		direction.y -= 1.0

	direction *= SPEED * delta
	translate(direction)
	
