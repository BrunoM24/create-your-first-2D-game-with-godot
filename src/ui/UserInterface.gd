extends Control


onready var scene_tree := get_tree()
onready var pause_overlay : ColorRect = $PauseOverlay

var paused := false setget set_paused


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("pause"):
		self.paused = not paused


func set_paused(value: bool) -> void:
	paused = value
	scene_tree.paused = value
	pause_overlay.visible = value
