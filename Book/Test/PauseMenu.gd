extends Node

var label = Label.new()
var counter = 0

func _ready():
	label.text = str(0)
	$PauseMenu.dialog_text = "Paused"
	$PauseMenu.connect("popup_hide", self, "unpause")
	$PauseMenu.popup_exclusive = true
	$PauseMenu.pause_mode = PAUSE_MODE_PROCESS
	add_child(label)

func _process(delta):
	counter += delta
	label.text = "%.1f" % counter

func _input(event):
	if event is InputEventKey:
		if event.scancode == KEY_ESCAPE:
			$PauseMenu.popup()
			get_tree().set_pause(true)

func unpause():
	get_tree().set_pause(false)
