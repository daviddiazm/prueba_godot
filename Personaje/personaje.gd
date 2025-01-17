class_name Personaje
extends CharacterBody2D

#const JUMP_VELOCITY = -400.0
@export var SPEED = 300
@export var gravity = 100
@export var jump_velocity = 100
@onready var sprite_2d: Sprite2D = $Sprite2D


func _physics_process(delta: float) -> void:
	
	var is_jump_pressed = Input.is_action_just_pressed("saltar")
	var is_sprint_pressed = Input.is_action_pressed("correr")
	var direccion = Input.get_axis( "izquierda", "derecha" )
	
	if direccion != 0 :
		$Sprite2D.scale.x = direccion / 2
	
	if not is_on_floor():
		velocity.y += gravity * delta
		
	if is_jump_pressed:
		velocity.y -= jump_velocity
	
	if direccion:
		velocity.x = SPEED * direccion
	else :
		velocity.x = 0
		
	if is_sprint_pressed && direccion :
		velocity.x *= 2
		 
		
	move_and_slide()


#func _physics_process(delta: float) -> void:
	 ##Add the gravity.
	#if not is_on_floor():
		#velocity += get_gravity() * delta
#
	## Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY
#
	## Get the input direction and handle the movement/deceleration.
	## As good practice, you should replace UI actions with custom gameplay actions.
	#var direction := Input.get_axis("ui_left", "ui_right")
	#if direction:
		#velocity.x = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
#
	#move_and_slide()
