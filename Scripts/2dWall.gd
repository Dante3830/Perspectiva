extends MeshInstance3D

@onready var collider2 = $StaticBody3D/CollisionShape2

func _process(_delta):
	if Global.twoDimensional:
		collider2.disabled = false
	else:
		collider2.disabled = true
