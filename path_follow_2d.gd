extends PathFollow2D

var speed = 0.04

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	movement(delta)
		
func movement(delta):
	progress_ratio += delta * speed

#this is not part of the game, just some fun music video stuff.
