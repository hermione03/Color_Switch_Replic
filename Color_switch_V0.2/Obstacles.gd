extends Node2D


onready var  csize = ($circle.texture.get_height()) / 2

export var rotation_speed:float = 90
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var purple = 45
export var pas = -1
# Called when the node enters the scene tree for the first time.
func _ready():
	
	print(csize)

func _process(delta):
	$circle.rotation_degrees += 90 * delta
	
	if ( (purple >=0 && purple < 90)):
		print("purple",purple)
		
	else:
		print(".")
		
	if (purple == 180):
		purple = 0
		pas = -pas
		
	
	purple+=1
	print(pas)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
