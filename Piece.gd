extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	#print(get_node("Area2D"))
	#get_node("Area2D").connect("body_enter", self, "_collect_gear")
	$AnimationPlayer.play("Move")
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


	




#func _collect_gear( body ):
	#print("coucou2")
	#if get_node("AnimationPlayer").get_current_animation() != "collect":
	#	if get_owner() != null:
	#		get_owner().gears_collected += value
	#		get_owner().get_node("gui/gears_collected").set_text(str(get_owner().gears_collected))
	#		get_node("AnimationPlayer").play("collect")