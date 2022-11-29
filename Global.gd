extends Node

var which_player = 0
var player2id = -1
var menu = null

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS

func _unhandled_input(event):
	if Input.is_action_pressed("menu"):
		if menu == null:
			menu = get_node_or_null("/root/Game/UI/Menu")
		if menu != null:
			if not menu.visible:
				get_tree().paused = true
				menu.visible = true
			else:
				get_tree().paused = false
				menu.visible = false
