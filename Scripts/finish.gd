extends MeshInstance3D

func _on_finish_collision_body_entered(body):
	if body.is_in_group("Player"):
		Global.gameOn = false
		get_tree().change_scene_to_file("res://Scenes/Victory.tscn")
