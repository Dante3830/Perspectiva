extends Control

@onready var sprite1 = $BoxContainer/HBoxContainer/Sprite1
@onready var sprite2 = $BoxContainer/HBoxContainer/Sprite2
@onready var sprite3 = $BoxContainer/HBoxContainer/Sprite3

func _on_play_button_pressed():
	Global.lives = 5
	Global.clock = 0
	Global.gameOn = true
	Global.twoDimensional = true
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")

func _process(_delta):
	$YourTimeDP.text = str(Global.seconds) + ":" + str(Global.milliseconds)
	
	if Global.seconds >= 90:
		sprite3.hide()
	elif Global.seconds >= 120:
		sprite2.hide()
		sprite3.hide()
	elif Global.seconds >= 200:
		sprite1.hide()
		sprite2.hide()
		sprite3.hide()
	else:
		pass
