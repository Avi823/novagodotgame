extends Area2D


func _ready() -> void:
	body_entered.connect(_on_body_entered)


func _on_body_entered(body: Node2D) -> void:
	if body.has_method("update_checkpoint"):
		# Use global_position explicitly
		body.update_checkpoint(global_position)
