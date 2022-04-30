extends "res://Ball.gd"
class_name CBall

var _key_state = false
export var start = false

#func _init(image_file:String, position0:Vector2, velocity0:Vector2, acceleration:Vector2):
#	texture = load(image_file)	

#func _ready():
#	position = Vector2(	0.5 * get_parent().get_viewport().size.x,
#						0.5 * get_parent().get_viewport().size.y)

func _process(delta):
	var velocity:Vector2 = Vector2(0, 0)
	if (start):
		_velocity.y += _acceleration.y * delta
		position += _velocity * delta
		if _key_state:
				velocity += Vector2(0, -350)
		_velocity += velocity
		if _key_state:
			_key_state = false
	if position ==Vector2(100,100):
		start = false

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_SPACE:
			_key_state = (!event.is_echo()) and event.is_pressed()
		if event.pressed and event.scancode == KEY_ENTER:
			start = not(start)



	
	
