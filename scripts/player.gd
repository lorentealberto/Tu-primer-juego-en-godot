extends CharacterBody2D

#Velocidad horizontal
const HSPEED = 200 

#Método que se ejecutará una vez en cada FPS del juego
func _process(delta):
	manage_controls()
	
	#Aplicamos movimiento al objeto con la velocidad que tenga
	move_and_slide()
	
	#Evitar que el personaje abandone la pantalla
	position.x = clamp(position.x, 8, 120)

#Método encarado de gestionar los controles
func manage_controls():
	if Input.is_action_pressed("move_left"):
		velocity.x = -HSPEED
	elif Input.is_action_pressed("move_right"):
		velocity.x = HSPEED
	else:
		velocity.x = 0
