class_name Barril

extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
func _process(_delta: float) -> void:
	if position.y > 900:
		queue_free()
