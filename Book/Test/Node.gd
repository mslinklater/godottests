extends Node

func _input(event):
	if event is InputEventKey:
		var is_echo = "Echo" if event.echo else ""
		
		if event.pressed:
			prints("Key pressed", OS.get_scancode_string(event.scancode), is_echo)
		else:
			prints("Key released", OS.get_scancode_string(event.scancode), is_echo)
