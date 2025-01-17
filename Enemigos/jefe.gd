class_name Jefe
extends StaticBody2D
@onready var sprite_2d_2: Sprite2D = $Sprite2D/Sprite2D2

@onready var animation_player: AnimationPlayer = $AnimationPlayer
const ESCENA_BARRIL = preload("res://Enemigos/barril.tscn")

func _ready() -> void:
	pass # Replace with function body.


func _process(_delta: float) -> void:
	pass

func lunch_barrel():
	var instacia_del_barril = ESCENA_BARRIL.instantiate()
	instacia_del_barril.position = sprite_2d_2.position
	add_child(instacia_del_barril)
	animation_player.play("reposo")

func _on_timer_timeout() -> void:
	animation_player.play("lanzar")
	$Timer.wait_time = randf_range(2, 5)
