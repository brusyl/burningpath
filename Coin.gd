extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	$AnimationPlayer.play("Coin_animation")
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_Area2D_body_entered( body ):
	print(body)
	if (not body.get("is_player") == null):
		#$CollisionPolygon2D.disabled = true
		hide()
		#emit_signal("star_taken")
		queue_free()
