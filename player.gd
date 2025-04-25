extends SoftBody2D


func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("jump"):
		apply_impulse(Vector2(clampf(get_center_body().rigidbody.global_position.direction_to(get_global_mouse_position()).x, -1, 1), -1) * 50)
