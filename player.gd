extends RigidBody3D

@onready var camera: Camera3D = $Camera3D

@export var speed: float = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	camera.position = position + Vector3(0, 1, 2)
	var dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	apply_force(Vector3(dir.x * speed, 0, dir.y * speed))
