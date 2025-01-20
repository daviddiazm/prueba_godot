class_name Barril

extends RigidBody2D

@onready var red_body_circle: Sprite2D = $RedBodyCircle
const PINK_BODY_CIRCLE = preload("res://assets/Double/pink_body_circle.png")

var tipo = "Barril"
var is_touched = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
func _process(_delta: float) -> void:
	if position.y > 900:
		queue_free()


func _on_body_entered(body: Node) -> void:
	if body is Personaje && not is_touched:
		red_body_circle.texture = PINK_BODY_CIRCLE
		is_touched = true
		if body.has_method("damage_recived"):
			body.damage_recived()
