extends StaticBody2D

@onready var CollisionShape: CollisionShape2D = $CollisionShape2D as CollisionShape2D

func enable():
	CollisionShape.set_deferred("disabled", true)
func disable():
	CollisionShape.set_deferred("disabled", false)
func toggle():
	CollisionShape.set_deferred("disabled", !CollisionShape.disabled)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	pass
