extends Node


signal coin_collected
signal player_died


var coins_collected := 0 setget set_coins_collected
var deaths := 0 setget set_deaths


func reset() -> void:
	coins_collected = 0
	deaths = 0


func set_coins_collected(value: int) -> void:
	coins_collected += value
	emit_signal("coin_collected")


func set_deaths(value :int) -> void:
	deaths = value
	emit_signal("player_died")
