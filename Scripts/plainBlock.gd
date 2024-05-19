extends MeshInstance3D

@onready var collider = $StaticBody3D/CollisionShape3D

func _process(_delta):
	if Global.twoDimensional:
		collider.disabled = true
	else:
		collider.disabled = false
