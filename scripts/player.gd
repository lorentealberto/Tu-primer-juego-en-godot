extends CharacterBody2D


const HSPEED = 200 #Velocidad Horizontal

func _process(delta):
	#Controles
	if Input.is_action_pressed("move_left"):
		velocity.x = -HSPEED
	elif Input.is_action_pressed("move_right"):
		velocity.x = HSPEED
	else:
		velocity.x = 0

	move_and_slide()
	
	#Evitar que el personaje abandone la pantalla
	position.x = clamp(position.x, 8, 120)
