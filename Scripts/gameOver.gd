extends Control

func _on_play_button_pressed():
	Global.lives = 5
	Global.clock = 0
	Global.gameOn = true
	Global.twoDimensional = true
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")
