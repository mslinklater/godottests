extends Node

export (PackedScene) var Mob
var score

func _ready():
	randomize()

func game_over():
	$ScoreTimer.stop()
	$MobTimer.stop()

func new_game():
	score = 0;
	$Player.start($StartPosition.position)
	$StartTimer.start()
	

func _on_StartTimer_timeout():
	$MobTimer.start()
	$ScoreTimer.start()

func _on_MobTimer_timeout():
	pass # Replace with function body.


func _on_ScoreTimer_timeout():
	score += 1
