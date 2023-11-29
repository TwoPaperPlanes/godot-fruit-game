extends Node2D

var score = 0
var wrong_hit = 3

func _on_CatchFruitArea_body_entered(body):
	print(body.name)
	if body.name == "IC1" or body.name == "IC2":
		wrong_hit = wrong_hit - 1
		get_node("LivesLabel").text = "Lives: " + str(wrong_hit)
		get_node("WrongSound").play()
		body.queue_free()
		#if wrong_hit == 0:
		#	get_tree().change_scene("res://GameOver.tscn")
	else:
		score = score + 1
		get_node("ScoreLabel").text = "Score: " + str(score)
		get_node("CollectSound").play()
		body.queue_free()
