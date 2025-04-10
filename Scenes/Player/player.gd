extends CharacterBody2D


@export var move_speed: int = 50

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	# Input function that captures all four move directions
	var movement: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	# velocity is built in variable
	velocity = movement * move_speed
	
	# handle basic animation based on four way movement 
	if velocity.y > 0:
		animated_sprite_2d.play("move_down")
	elif velocity.y < 0:
		animated_sprite_2d.play("move_up")
	elif velocity.x > 0:
		animated_sprite_2d.play("move_right")
	elif velocity.x < 0:
		animated_sprite_2d.play("move_left")
	else:
		animated_sprite_2d.stop()
	
	# update player position
	move_and_slide()
	
