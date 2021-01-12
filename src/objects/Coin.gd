extends Area2D


onready var animationPlayer : AnimationPlayer = $AnimationPlayer


func _on_body_entered(body: Node) -> void:
	PlayerData.coins_collected += 1
	animationPlayer.play("fade_out")
