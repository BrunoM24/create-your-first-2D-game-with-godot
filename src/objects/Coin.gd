extends Area2D


onready var animationPlayer : AnimationPlayer = $AnimationPlayer


func _on_body_entered(body: Node) -> void:
	animationPlayer.play("fade_out")
