extends "res://Ball.gd"
class_name CBall
enum {GO_LEFT = 0, GO_UP = 1, GO_RIGHT = 2, GO_DOWN = 3, GO_JUMP=4}
var _key_codes = [KEY_LEFT, KEY_UP, KEY_RIGHT, KEY_DOWN,KEY_SPACE]
var _key_states = [false, false, false, false,false]
var _translation_velocity = [Vector2(-100, 0), Vector2(0, -30), Vector2(10, 0), Vector2(0, 10),Vector2(0,-350)]

#func _init(image_file:String, position0:Vector2, velocity0:Vector2, acceleration:Vector2):
#	texture = load(image_file)	

#func _ready():
#	position = Vector2(	0.5 * get_parent().get_viewport().size.x,
#						0.5 * get_parent().get_viewport().size.y)

func _process(delta):
	var velocity:Vector2 = Vector2(0, 0)
	for i in range(_key_states.size()):
		if _key_states[i]:
			velocity += _translation_velocity[i]
	_velocity += velocity
	if _key_states[GO_JUMP]:
		_key_states[GO_JUMP] = false

func _unhandled_key_input(event):
	for i in range(_key_states.size()):
		if event.scancode == _key_codes[i]:
			_key_states[i] = (!event.is_echo()) and event.is_pressed()


func map_keys(left:int, up:int, right:int, down:int, jump:int):
	_key_codes[GO_LEFT] = left
	_key_codes[GO_UP] = up
	_key_codes[GO_RIGHT] = right
	_key_codes[GO_DOWN] = down
	_key_codes[GO_JUMP] = jump
	
	
