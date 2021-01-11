extends Node2D


func _ready() -> void:
	var player: KinematicBody2D = $Player
	for enemy in get_tree().get_nodes_in_group("enemy"):
		if enemy.has_method("decide_direction"):
			enemy.decide_direction(player.global_position)
