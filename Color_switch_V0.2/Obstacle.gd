extends Sprite
var RotateSpeed = 1
var Radius = 200
var _centre
var _angle = 0
"""var _velocity:Vector2 
export (int) var speed = 200
func _init(	image_file:String ="res://assets/Obstacle1.png" , 
			position0:Vector2 = Vector2(100,-200), 
			velocity0:Vector2 = Vector2(0,0)):
	var image = load(image_file)
	position = position0
	_velocity = velocity0
	
func _physics_process(_delta):
	_velocity = Vector2(-speed, 0).rotated(rotation)
	_velocity = move_and_slide(_velocity)"""

func _init(	image_file:String,  
			velocity0:Vector2 = Vector2(0,0)):
	var image = load(image_file)
	texture = image
	
	
func _ready():
	set_process(true)
	_centre = Vector2(0,0)
	#look_at(_centre)
func _process(delta):
	#position.x = position.x - 1
	rotate(deg2rad(1))
	#rotation += 2*delta
	"""_angle += RotateSpeed * delta;
	var offset = Vector2(sin(_angle), cos(_angle)) * Radius;
	var pos = _centre + offset
	position = pos"""
	



	   
