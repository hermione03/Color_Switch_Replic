extends Node2D
#onready var ob1 = $Obstacles
#onready var ob2 = $Obstacles    
  

export (int) var speed = 200
export var pas = -1
var glob = 1
var rot1  = 90
var rot2 = 362
onready var Ball
onready var  purple:int = 45
var _limiti1:Vector2 = Vector2(100,-419) 
var _limiti2 :Vector2 = Vector2(100,-711)
onready var Complet
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
	tex.set_size(Vector2(100000,100000))
	tex.set_position(Vector2(-5000,-5000))
	tex.stretch_mode = TextureRect.STRETCH_TILE
	add_child(tex)
	Ball  = CBall.new()
	add_child(Ball)
	#var perso2 = load("res://CMobile.gd").new()
	#perso2.map_keys(KEY_Q, KEY_Z, KEY_D, KEY_S,KEY_0)
	#add_child(perso2)
	var cam:Camera2D = Camera2D.new()
	Ball.add_child(cam)
	cam.make_current()
	var mob = obstacle.new("res://icon.png")
	add_child(mob)
	mob.position = Vector2(100,200)
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
	
	#var _limiti1:Vector2 = Vector2(100,(-600 + Complet.csize + 16)) 
	#var _limiti2 :Vector2 = Vector2(100,(-600 -(Complet.csize + 38 + 16)))
	
	
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
	
	"""if (purple < deg2rad(180)):
		purple+=deg2rad(1)
		if (Ball.position.y <= _limiti1.y ) :
			Ball._velocity.y = -(Ball._velocity.y)
		print("purple")
	elif ( (purple > (deg2rad(180)) && purple < deg2rad(450)) ):
		purple+=deg2rad(45)
	else:
		purple = deg2rad(90)"""

	if (pas == 1):
		if (purple >=0 && purple <=90):
			print("purple",purple)
			
			if (Ball.position.y>-418  && Ball.position.y<-400) :
				Ball.position = Vector2(100,100)
				Ball.start = false
				
			
		
				
					
				
		else:
			print(".")
			if ((Ball.position.y>-418  && Ball.position.y<-400)||(Ball.position.y>-762 && Ball.position.y<-712)):
				Ball.position = Vector2(100,100)
				Ball.start = false
				print("*****************************************")
			if (purple == 180):
				purple = 0 
				pas = -pas 
	else:
		if (purple >=0 && purple <=90):
			print("purple",purple)
			
			
			if (Ball.position.y>762  && Ball.position.y<-712) :
				Ball.position = Vector2(100,100)
				Ball.start = false
				
			
		
				
					
				
		else:
			print(".")
			if ((Ball.position.y>-418  && Ball.position.y<-400)||(Ball.position.y>-762 && Ball.position.y<-712)):
				Ball.position = Vector2(100,100)
				Ball.start = false
				print("*****************************************")
		if (purple == 180):
			purple = 0 
			pas = -pas 

		
			
			
			
	
	
	
		
	purple+=1
		
	
		
	
	
		
	
	
	
#$ball.position = Vector2(0,0)
#appel au constructeur de la classe
	
	
