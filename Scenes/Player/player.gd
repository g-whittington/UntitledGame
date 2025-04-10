extends CharacterBody2D


@export var move_speed: int = 50

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	# Input function that captures all four move directions
	var movement: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	# velocity is built in variable
	velocity = movement * move_speed
	
	# update player position
	move_and_slide()
	
