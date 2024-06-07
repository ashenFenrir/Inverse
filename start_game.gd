extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_mouse_entered():
	
		get_tree().change_scene_to_file("res://Scenes/node_2d.tscn")


func _on_input_event(viewport, event, shape_idx):
	pass # Replace with function body.
