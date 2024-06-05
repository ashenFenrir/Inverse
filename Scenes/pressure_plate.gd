extends StaticBody2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer as AnimationPlayer
@export var affect: Node2D

var state: bool = false

func _on_area_2d_body_entered(body: Node):
	if(!state):
		state = true
		animation_player.play("Enable")
		print("Pressure plate was pushed")
		affect.enable()
	

func _on_area_2d_body_exited(body):
	if(state):
		state = false
		animation_player.play("Disable")
		print("Pressure plate was unpushed")
		affect.disenable()
