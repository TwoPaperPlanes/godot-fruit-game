extends KinematicBody2D

var velocity = Vector2(0,0)
var score = 0

func _physics_process(_delta):
	if Input.is_action_pressed("Left"):
		velocity.x = -300
	elif Input.is_action_pressed("Right"):
		velocity.x = 300

	move_and_slide(velocity)
	velocity.x = lerp(velocity.x,0,0.1)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
