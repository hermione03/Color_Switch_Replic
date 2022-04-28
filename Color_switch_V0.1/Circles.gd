extends Sprite

#export var purple = 270  
#export var pas:bool  = true
const colors := {
  "yellow": 0,
  "blue" : 90,
  "pink": 180,
  "purple": 270
}
const angle_per_color := 90

func _init(	image_file:String,  
			velocity0:Vector2 = Vector2(0,0)):
	var image = load(image_file)
	texture = image
	
	
func _process(delta):
	rotate(deg2rad(1))
	
		
	

























































































"""extends Sprite

var d := 0.0
var radius := 150.0
var speed := 6.0

func _init(	image_file:String,  
			velocity0:Vector2 = Vector2(0,0)):
	var image = load(image_file)
	texture = image

# Called when the node enters the scene tree for the first time.
func _process(delta : float)-> void:
	d += delta
	position = Vector2(
	sin(d * speed) *  radius,
	cos(d * speed) * radius
	) * Vector2(100,-200)
	look_at(Vector2(100,-200))"""
"""func _process(delta):
	var point = Vector2(100,-200)
	position = point + Vector2(cos(90), sin(90)) * 100
	position = point + (position - point).rotated(90)
	look_at(point)
var angle = 0

func _process(delta):
	position = Vector2(100,-200)
	angle = 2* delta
	var offset = Vector2(32, 0)
	global_transform = global_transform * Transform2D().rotated(angle).translated(offset)"""
	

	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
