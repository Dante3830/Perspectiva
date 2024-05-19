extends StaticBody3D

func _physics_process(_delta):
	if Global.twoDimensional:
		$CollisionShape3D.disabled = false
	else:
		$CollisionShape3D.disabled = true
