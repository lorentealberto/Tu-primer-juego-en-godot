extends Node

@export var fruit: PackedScene

func _on_timer_timeout():
	add_child(fruit.instantiate())
