extends Node3D

@onready var collider1 = $"3DBridge1/StaticBody3D/CollisionShape3D"
@onready var collider2 = $"3DBridge2/StaticBody3D/CollisionShape3D"

func _physics_process(_delta):
	if Global.twoDimensional:
		collider1.disabled = true
		collider2.disabled = true
	else:
		collider1.disabled = false
		collider2.disabled = false
