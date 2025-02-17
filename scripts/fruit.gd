extends CharacterBody2D

#Obtenemos el nodo Sprite2D del objeto
@onready var sprite_2d = $Sprite2D

#Método que se ejecuta una única vez
func _ready():
	#Randomizamos el objeto
	randomize()
	
	#Asignamos un sprite aleatorio
	sprite_2d.frame = randi_range(6, 11)
	
	#Damos una velocidad vertical al objeto
	velocity.y = 100
	
	#Damos al objeto una posición horizontal aleatoria
	position.x = randi_range(8, 120)

#Método que se ejecuta una vez por cada FPS del juego
func _process(delta):
	move_and_slide()

#Método que se disparará cada vez que el objeto colisione
func _on_area_2d_area_entered(area):
	#Si el objeto colisiono con el suelo
	if area.get_parent().is_in_group("floor"):
		queue_free()
		print("Chocó con el suelo")
	else: #Si el objeto colisionó con otra cosa
		queue_free()
		print("Fruta cogida")
