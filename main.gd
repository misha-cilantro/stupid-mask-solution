extends Node2D

const GUY = preload("uid://cxqamemt5h8rq")

@onready var spawn_position: Node2D = %SpawnPosition

func _ready() -> void:
	_spawn_guy()

func _spawn_guy() -> void:
	var guy: GuyScn = GUY.instantiate()
	guy.position = spawn_position.position
	add_child(guy)
	
	var wait := randf_range(0.5, 2.5)
	await get_tree().create_timer(wait).timeout
	
	_spawn_guy()
