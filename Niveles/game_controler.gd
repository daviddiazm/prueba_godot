extends Node2D
@onready var personaje: Personaje = $"../Personaje"

@export var seconds = 100

const SCENNE_FINISH_FIEL = "res://UI/Final scenne/scenne_finish.tscn"
signal time_updated(seconds_left)

func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
	#
	

func player_lose_lifes() :
	#print(personaje.lifes)
	if personaje.lifes > 1:
		personaje.lifes -= 1
	else:
		game_over()
		print("acabaste todas tus vidas")

func player_win() :
	var scene_finis_preload = preload(SCENNE_FINISH_FIEL).instantiate()
	scene_finis_preload.set_text("Felicidades!")
	add_child(scene_finis_preload)
	print("el jugador gano y se acabo el juego")

func game_over():
	print("se acabo el juego")
	get_tree().change_scene_to_file(SCENNE_FINISH_FIEL)
	

func _on_personaje_player_kicked() -> void:
	player_lose_lifes()


func _on_area_2d_body_entered(_body: Node2D) -> void:
	player_win()


func _on_timer_timeout() -> void:
	if seconds > 0:
		seconds -= 1
	else:
		$Timer.stop()
		game_over()
	time_updated.emit(seconds)
