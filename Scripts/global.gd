extends Node

var twoDimensional : bool
var lives = 5
var clock : float
var gameOn = false
var seconds
var milliseconds
 
func _process(delta):
	
	seconds = int(clock)
	milliseconds = int((clock - seconds) * 1000)
	milliseconds = int(round(milliseconds / 10.0))
	
	if gameOn:
		clock += delta
		
		if lives <= 0:
			gameOn = false
			get_tree().change_scene_to_file("Scenes/GameOver.tscn")
