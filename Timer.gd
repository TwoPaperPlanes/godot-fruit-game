extends Timer

var apple = preload("res://Scenes/AppleScene.tscn")
var orange = preload("res://Scenes/OrangeScene.tscn")
var banana = preload("res://Scenes/BananaScene.tscn")
var icecream1 = preload("res://Scenes/Icecream1Scene.tscn")
var icecream2 = preload("res://Scenes/Icecream2Scene.tscn")

func _on_TimerSpawn_timeout():
	randomize() 
	var fruits = [apple,orange,banana,icecream1,icecream2]
	var random_fruit = fruits[randi()%fruits.size()]
	var chosen_fruit = random_fruit.instance()

	chosen_fruit.position = Vector2(rand_range(100,600), -100)
	add_child(chosen_fruit)
