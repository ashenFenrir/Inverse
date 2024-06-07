extends StaticBody2D

@onready var CollisionShape: CollisionShape2D = $CollisionShape2D as CollisionShape2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer as AnimationPlayer

func enable():
	CollisionShape.set_deferred("disabled", true)
	animation_player.play("open")
func disable():
	CollisionShape.set_deferred("disabled", false)
	animation_player.play("close")
func toggle():
	CollisionShape.set_deferred("disabled", !CollisionShape.disabled)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	pass
