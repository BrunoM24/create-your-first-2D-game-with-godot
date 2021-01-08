extends Area2D


onready var animationPlayer : AnimationPlayer = $AnimationPlayer


export var score : int = 100


func _on_body_entered(body: Node) -> void:
	PlayerData.score += score
	animationPlayer.play("fade_out")
