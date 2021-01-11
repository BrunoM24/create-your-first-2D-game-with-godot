extends Control


onready var label : Label = $Label


func _ready() -> void:
	label.text = label.text % [PlayerData.coins_collected, PlayerData.deaths]
