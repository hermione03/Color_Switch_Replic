extends "res://Obstacle.gd"

export (int) var speed = 200




   

func _physics_process(_delta):
	_velocity = Vector2(-speed, 0).rotated(rotation)
	_velocity = move_and_slide(_velocity)
