tool
extends Area2D

onready var animationPlayer: AnimationPlayer = $AnimationPlayer

export var next_scene: PackedScene


func _get_configuration_warning() -> String:
	return "The next scene property can't be empty" if not next_scene else ""


func teleport() -> void:
	animationPlayer.play("fade_in")
