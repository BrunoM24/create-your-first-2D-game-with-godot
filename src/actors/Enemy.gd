extends "res://src/actors/Actor.gd"


onready var collisionShape : CollisionShape2D = $CollisionShape2D
onready var stompDetector : Area2D = $StompDetector


func _ready() -> void:
	_velocity.x = -speed.x


func _on_StompDetector_body_entered(body: Node) -> void:
	if body.global_position.y > stompDetector.global_position.y:
		return
	
	die()


func _physics_process(delta: float) -> void:
	_velocity.y += gravity * delta
	
	if is_on_wall():
		_velocity.x *= -1.0
	
	var snap := Vector2.DOWN * 65
	_velocity.y = move_and_slide_with_snap(_velocity, snap, Vector2.UP).y
	


func die() -> void:
	collisionShape.disabled = true
	queue_free()


func decide_direction(player_global_position: Vector2) -> void:
	var direction: float = sign(player_global_position.x - global_position.x)
	
	if direction > 0:
		_velocity.x *= -1.0
