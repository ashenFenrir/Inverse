extends Node2D

@export var affect: Node2D

var state = false

func enable():
	state = !state
	if state:
		affect.enable()
	else:
		affect.disable()

func disable():
	affect.disable()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
