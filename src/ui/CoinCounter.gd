extends HBoxContainer


onready var label : Label = $Label


func _ready() -> void:
	PlayerData.connect("score_updated", self, "_on_Coin_Collected")


func _on_Coin_Collected() -> void:
	label.text = str(PlayerData.score)
