extends Area2D

const MOVE_SPEED = 150
const SCREEN_WIDTH = 320
const SCREEN_HEIGHT = 180

var shot_scene = preload("res://scenes/shot.tscn")
var can_shoot = true

func _process(delta):
	var input_dir = Vector2()
	
	if Input.is_key_pressed(KEY_UP):
		input_dir.y -= 1.0
	if Input.is_key_pressed(KEY_DOWN):
		input_dir.y += 1.0
	if Input.is_key_pressed(KEY_LEFT):
		input_dir.x -= 1.0
	if Input.is_key_pressed(KEY_RIGHT):
		input_dir.x += 1.0
		
	position += (delta * MOVE_SPEED) * input_dir
	
	if position.x < 0.0:
		position.x = 0.0
	if position.x > SCREEN_WIDTH:
		position.x = SCREEN_WIDTH
	if position.y < 0.0:
		position.y = 0.0
	if position.y > SCREEN_HEIGHT:
		position.y = SCREEN_HEIGHT
		
	if Input.is_key_pressed(KEY_SPACE) and can_shoot:
		var stage_node = get_parent()
		var shot_instance = shot_scene.instance()
		shot_instance.position = position
		stage_node.add_child(shot_instance)
		can_shoot = false
		get_node("reload_timer").start()

func _on_reload_timer_timeout():
	can_shoot = true
