extends Node

var number:int
var my_name:String

# Called when the node enters the scene tree for the first time.
func _ready():
	number = 12
	my_name = "Martin"
	print("Hello " + my_name + ", your number is " + str(number))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(my_name)
