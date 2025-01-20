extends CanvasLayer
@onready var my_box: HBoxContainer = $HBoxContainer

const CORAZON = preload("res://UI/corazon_prueba/corazon.tscn")
const TILE_CLOUD = preload("res://assets/Double/tile_cloud.png")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass



func _on_personaje_player_kicked() -> void:
	if my_box.get_child_count() > 0 :
		var element = my_box.get_child(0)
		my_box.remove_child(element)


#func _on_personaje_playe_heald(player_lifes: Variant) -> void:
	##var corazonxd = TextureRect.new()
	##corazonxd.texture = TILE_CLOUD
	##my_box.add_child(corazonxd)
	#adjust_hearts(player_lifes)
	#pass
		#
#
#func add_hearts(lifes_number):
	#
	#for i in lifes_number:
		#var corazonxd = TextureRect.new()
		#corazonxd.texture = TILE_CLOUD
		#my_box.add_child(corazonxd)
	#pass
#func adjust_hearts(player_lifes):
	#
	#pass
	#
#func clean_my_box():
	#print("hola")
	#for i in range(my_box.get_child_count() -1, -1, -1):
		#print(i)
	
	


func _on_game_controler_time_updated(seconds_left: Variant) -> void:
	$TextureRect/Label.text = str(seconds_left)
