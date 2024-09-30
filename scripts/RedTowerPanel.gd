extends Panel

@export var tower : PackedScene
var currTile

func _on_gui_input(event):
	var tempTower = tower.instantiate()
	if event is InputEventMouseButton and event.button_mask == 1:
		#Left button down
		add_child(tempTower)
		tempTower.global_position = event.button_mask == 1
		tempTower.process_mode = Node.PROCESS_MODE_DISABLED
	elif event is InputEventMouseButton and event.button_mask == 1:
		#left click down drag
	elif event is InputEventMouseButton and event.button_mask == 0:
		#left click up
		print("Left button Up")
	
