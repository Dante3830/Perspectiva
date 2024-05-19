extends Node3D

var playerInitialPosition := Vector3(9.824, 24.28, 29.60)
@onready var player = $Player
@onready var livesText = $HUD/LivesDP
@onready var timeText = $HUD/TimeDP
@onready var dimText = $HUD/DimDP

var red = Color(1, 0, 0)
var blue = Color(0, 0, 1)

func _physics_process(_delta):
	if player.position.y <= 5:
		player.position = playerInitialPosition
		Global.lives -= 1

func _process(_delta):
	livesText.text = str(Global.lives)
	timeText.text = str(Global.seconds) + ":" + str(Global.milliseconds)
	
	if Global.twoDimensional:
		dimText.text = "2D"
		dimText.add_theme_color_override("font_color", red)
	else:
		dimText.text = "3D"
		dimText.add_theme_color_override("font_color", blue)
