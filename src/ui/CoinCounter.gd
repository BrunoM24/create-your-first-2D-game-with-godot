extends HBoxContainer


onready var label : Label = $Label


func _ready() -> void:
	PlayerData.connect("coin_collected", self, "_on_Coin_Collected")
	_on_Coin_Collected()


func _on_Coin_Collected() -> void:
	label.text = str(PlayerData.coins_collected).pad_zeros(3)
