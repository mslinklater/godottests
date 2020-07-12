extends Node2D

onready var count_label = $Label
var num_sprites = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func spawn_sprite(time):
	var newSprite = load("res://Sprite.tscn").instance()
	
	newSprite.position.x = rand_range(0, get_viewport().size.x)
	newSprite.position.y = 50
	
	add_child(newSprite)
	num_sprites += 1

	count_label.text = num_sprites as String + " " + time as String

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if delta < 0.0167:
		for _i in range(10):
			spawn_sprite(delta)

func _on_Button_pressed():
	spawn_sprite(0)
