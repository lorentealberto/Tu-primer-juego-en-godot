extends Node

#Importamos la escena de la fruta
@export var fruit: PackedScene

#Método que se ejecutará cada vez que se acabe el timpo que hemos indicado en
#el temporizador
func _on_timer_timeout():
	#Añade una nueva isntancia de la fruta a este nodo
	add_child(fruit.instantiate())
