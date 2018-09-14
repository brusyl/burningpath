extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Mur_climb_body_entered(body):
	print(body)
	if (not body.get("is_player") == null):
		body.set("is_climb_area", true)
		print(body.get("is_climb_area"))

func _on_body_exited(body):
	print("je sors")
	print(body)
	if (not body.get("is_player") == null):
		body.set("is_climb_area", false)
		print(body.get("is_climb_area"))