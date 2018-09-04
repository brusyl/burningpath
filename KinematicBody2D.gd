extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export (bool) var is_player = true

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
	

const UP = Vector2(0, -1)
const GRAVITY = 20
const SPEED = 200
const JUMP = -600

var motion = Vector2()

func _physics_process(delta):
	motion.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
	else : 
		motion.x = 0
	
	if is_on_floor():
		#print("is on floor")
		if Input.is_action_pressed("ui_up"):
			motion.y = JUMP
	
	move_and_slide(motion, UP)
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


#func _on_Node2D_body_entered(body):
#	print ("coucou")
#	pass # replace with function body
