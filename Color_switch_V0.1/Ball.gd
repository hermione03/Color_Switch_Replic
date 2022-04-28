extends Sprite
var passer: bool = false 

var _limiti:Vector2
var _limits:Vector2 = Vector2(100,-410)
var _velocity:Vector2 
var _acceleration:Vector2

func _init(	image_file:String = "res://assets/balle_violette.png", 
			position0:Vector2 = Vector2(100,100), 
			velocity0:Vector2 = Vector2(0,0), 
			acceleration:Vector2 = Vector2(0,981)):
	var image = load(image_file)
	texture = image
	position = position0
	_velocity = velocity0
	_acceleration = acceleration

	
	
func _process(delta):
	
	#var dt = _collision(delta)
	
	_velocity.y += _acceleration.y * delta
	position += _velocity * delta
	if (passer == false ):
		
		if (position.x <= _limits.x && _velocity.x < 0.0) :
			_velocity.x = -_velocity.x
		if (position.y <= _limits.y && _velocity.y < 0.0)  :
			_velocity.y = -_velocity.y
	

# Called when the node enters the scene tree for the first time.
#func _ready():
	# créer un générateur de nombres pseudo-aléatoires
#	var rng:RandomNumberGenerator = RandomNumberGenerator.new()
#	rng.randomize()
#	for _i in range(100):
#		var vitesse = Vector2(rng.randf_range(-600, 600), rng.randf_range(-700, 1))
		# appel au constructeur de la classe Mobile
#		var mob = Mobile.new("res://soccer.png", Vector2(300, 300), vitesse, Vector2(0, 981))
		# ajouter mob dans la scène
#		add_child(mob)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(_delta):
#	pass
