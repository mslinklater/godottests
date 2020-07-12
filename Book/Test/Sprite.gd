extends Sprite

var speed = 0
var rot_speed = rand_range(-.1,.1)

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	speed += delta * 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):		
	position.y += speed * delta
	rotation += rot_speed

	if position.y > get_viewport().size.y:
		speed = -abs(speed)
		
