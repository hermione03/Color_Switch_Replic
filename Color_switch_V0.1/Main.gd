extends Node2D

export (int) var speed = 200
onready var Balle
onready var Complet
export var purple = 270  
export var pas:bool = false
class obstacle extends Sprite:
	func _init(image_file:String):
		#var _limiti:Vector2
		#var _limits:Vector2
		var image =  load(image_file)
		texture = image
		position = Vector2(100, 100)
func _ready():
	var tex:TextureRect = TextureRect.new()
	tex.texture = load("res://assets/font.png")	
	tex.set_size(Vector2(10000,10000))
	tex.set_position(Vector2(-5000,-5000))
	tex.stretch_mode = TextureRect.STRETCH_TILE
	add_child(tex)
	Balle  = CBall.new()
	add_child(Balle)
	#var perso2 = load("res://CMobile.gd").new()
	#perso2.map_keys(KEY_Q, KEY_Z, KEY_D, KEY_S,KEY_0)
	#add_child(perso2)
	var cam:Camera2D = Camera2D.new()
	Balle.add_child(cam)
	cam.make_current()
	var mob = obstacle.new("res://icon.png")
	add_child(mob)
	var mob2 = obstacle.new("res://icon.png")
	mob2.position = Vector2(100,400)
	add_child(mob2)
	
	
	#var Arc1 = obstacle.new("res://assets/Arc_01.png")
	#Arc1.position = Vector2(1,-200)
	#add_child(Arc1)
	#var Arc2 = obstacle.new("res://assets/Arc_02.png")
	#Arc2.position = Vector2(164,-200)
	#add_child(Arc2)
	#var Arc3 = obstacle.new("res://assets/Arc_03.png")
	#Arc3.position = Vector2(164,0)
	#add_child(Arc3)
	#var Arc4 = obstacle.new("res://assets/Arc_04.png")
	#Arc4.position = Vector2(0,-200)
	#add_child(Arc4)
	Complet = load("res://Circles.gd").new("res://assets/Obstacle.png")
	Complet.position = Vector2(100,-600)
	add_child(Complet)
	
	
	
	var Complet2 = load("res://Circles.gd").new("res://assets/Obstacle.png")
	Complet2.position = Vector2(100,-1000)
	add_child(Complet2)
	
	"""var Arc1 = load("res://Cercles.gd").new("res://assets/Arc_01.png")
	Arc1.position = Vector2(100,-600)
	add_child(Arc1)
	var Arc2 = load("res://Cercles.gd").new("res://assets/Arc_02.png")
	Arc2.position = Vector2(264,-600)
	add_child(Arc2)
	var Arc3 = load("res://Cercles.gd").new("res://assets/Arc_03.png")
	Arc3.position = Vector2(264,-436)
	add_child(Arc3)
	var Arc4= load("res://Cercles.gd").new("res://assets/Arc_04.png")
	Arc4.position = Vector2(100,-436)
	add_child(Arc4)
	var test= load("res://Cercles.gd").new("res://assets/Arc_04.png")
	test.position = Vector2(100,-436)
	add_child(test)"""
	
	
	
func _process(delta):
	purple += 1
	if (purple <= 270 || purple >= 360):
		print(purple)
		pas = true
	if (purple == 360):
		purple = 270
	Balle.passer = pas
	
	
	
	
#$ball.position = Vector2(0,0)
#appel au constructeur de la classe
	
	
