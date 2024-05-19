extends RigidBody3D

var jump_force = 8.0
var is_on_floor = false
@onready var camera = $Camera1

func _ready():
	$RayCast3D.add_exception(self)
	$RayCast3D.enabled = true

func _process(delta):
	is_on_floor = $RayCast3D.is_colliding()
	
	if is_on_floor and Input.is_action_just_pressed("Jump"):
		apply_central_impulse(Vector3.UP * jump_force)
	
	if Input.is_action_just_pressed("Change Camera"):
		toggle_camera_position()
	
	handle_movement(delta)

func toggle_camera_position():
	if Global.twoDimensional:
		camera.rotation_degrees.y = 0
		camera.rotation_degrees.z = 0
		camera.position.x = 0
		camera.position.z = 3
	else:
		camera.rotation_degrees.y = 89.5
		camera.rotation_degrees.z = -2
		camera.position.x = 10
		camera.position.z = 0
	Global.twoDimensional = not Global.twoDimensional

func handle_movement(delta):
	var input = Vector3.ZERO
	
	if Global.twoDimensional:
		# Moverse en dos dimensiones
		input.z = Input.get_axis("2D Right", "2D Left")
	else:
		# Moverse en tres direcciones
		input.x = Input.get_axis("2D Left", "2D Right")
		input.z = Input.get_axis("3D Forward", "3D Backward")
	
	apply_central_force(input * 800 * delta)
