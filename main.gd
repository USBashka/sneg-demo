extends Node3D


@export var sled: Texture2D

@onready var sneg_mesh: MeshInstance3D = $Sneg/MeshInstance3D
@onready var player: RigidBody3D = $Player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var promenad: Image = sneg_mesh.mesh.material.get_shader_parameter("promenad").get_image()
	var pos: Vector2 = Vector2(player.position.x+64, player.position.z+64) * 8
	promenad.fill_rect(Rect2i(pos.x-4, pos.y-4, 8, 8), Color.BLACK)
	var pro_texture = ImageTexture.create_from_image(promenad)
	sneg_mesh.mesh.material.set_shader_parameter("promenad", pro_texture)
