extends Control

func _ready() -> void:
	var config_path = "res://config.txt"
	var file = FileAccess.open(config_path, FileAccess.READ)
	
	if file == null:
		print_debug("Error: Could not open file ", config_path)
		return
	
	var lines = file.get_as_text().split("\n")
	file.close()
	
	# Set first line to Label (if it exists)
	if lines.size() > 0:
		$Tittle.text = lines[0]
	
	# Set second line to Label3 (if it exists)
	if lines.size() > 1:
		$VersionControl/VersionCode.text = lines[1]
