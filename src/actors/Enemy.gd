extends "res://src/actors/Actor.gd"


func _ready() -> void:
	_velocity.x = -speed.x


func _on_StompDetector_body_entered(body: Node) -> void:
	if body.global_position.y > $StompDetector.global_position.y:
		return
	
	$CollisionShape2D.disabled = true
	queue_free()


func _physics_process(delta: float) -> void:
	_velocity.y += gravity * delta
	
	if is_on_wall():
		_velocity.x *= -1.0
	
	var snap := Vector2.DOWN * 65
	_velocity.y = move_and_slide_with_snap(_velocity, snap, Vector2.UP).y
	
