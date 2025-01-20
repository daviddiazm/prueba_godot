extends CanvasLayer
const NIVEL_1_URL = "res://Niveles/nivel_1.tscn"
@onready var label: Label = $VBoxContainer/Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass

func set_text(new_text: String):
	if new_text != '' :
		label.text = new_text
		#$VBoxContainer/Label.text = new_text

func _on_button_button_down() -> void:
	get_tree().change_scene_to_file(NIVEL_1_URL)
