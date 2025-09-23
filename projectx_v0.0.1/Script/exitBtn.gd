extends Button


func _on_pressed() -> void:
	if OS.has_feature("web"):
		get_tree().change_scene_to_file("res://Scenes/mainMenu.tscn")
	else:
		get_tree().quit()
