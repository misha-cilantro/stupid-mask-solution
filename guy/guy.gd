class_name GuyScn
extends Node2D

@export var stopped := false

var speed: float

func _ready() -> void:
	speed = randf_range(100.0, 400.0)

func _process(delta: float) -> void:
	if stopped:
		return
	
	position.x += speed * delta
	if position.x >= 1300:
		queue_free()
