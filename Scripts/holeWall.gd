extends StaticBody3D

@onready var wall = $Wall

func _physics_process(_delta):
	if Global.twoDimensional:
		wall.disabled = false
	else:
		wall.disabled = true
