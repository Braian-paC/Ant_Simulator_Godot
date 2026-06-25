extends Node

@export var food_name = "StaticBody2D_Food"

func handle(player):
	if Input.is_action_just_pressed("InteractItem"):
		if GameManager.food_node:
			var pos = player.global_position
			player.get_parent().add_child(GameManager.food_node)
			GameManager.food_node.global_position = pos
			GameManager.food_node = null

		else:
			for i in range(player.get_slide_collision_count()):
				var col = player.get_slide_collision(i).get_collider()

				if col.name == food_name:
					GameManager.food_node = col
					GameManager.food_node.get_parent().remove_child(GameManager.food_node)

	if Input.is_action_just_pressed("ExitGame"):
		get_tree().quit()
