extends StaticBody2D
@onready  var CollisionShape: CollisionShape2D = $CollisionShape2D as CollisionShape2D

var fliyng_objects: Array = []

func enable():
	CollisionShape.set_deferred("disabled", true)
func disable():
	CollisionShape.set_deferred("disabled", false)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

@export var force: float = 1000

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for i in fliyng_objects:
		i.apply_impulse(Vector2(0, -force)*delta, Vector2.ONE)
		

func _on_area_2d_body_entered(body):
	fliyng_objects.append(body)


func _on_area_2d_body_exited(body):
	fliyng_objects.erase(body)
