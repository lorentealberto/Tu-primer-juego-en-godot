extends CharacterBody2D

@onready var sprite_2d = $Sprite2D

func _ready():
	randomize()
	sprite_2d.frame = randi_range(6, 11)
	velocity.y = 100
	
	position.x = randi_range(8, 120)

func _process(delta):
	move_and_slide()


func _on_area_2d_area_entered(area):
	if area.get_parent().is_in_group("floor"):
		queue_free()
		print("Chocó con el suelo")
	else:
		queue_free()
		print("Fruta cogida")
