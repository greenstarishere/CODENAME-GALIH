extends Control

@onready var splash_1 := $AspectRatioContainer/splash_1
@onready var splash_2 := $AspectRatioContainer/splash_2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta): 
	if Input.is_action_just_pressed("ui_cancel"):
		if splash_1.is_playing():
			splash_1.stop()
			splash_2.play()
		else:
			get_tree().change_scene_to_packed((load("res://Scenes/main_menu.tscn")))
	pass

func _on_splash_1_finished():
	splash_2.play()
	pass # Replace with function body.

func _on_splash_2_finished():
	get_tree().change_scene_to_packed(load("res://Scenes/main_menu.tscn"))
	pass # Replace with function body.
#Replace with function body.

func _on_button_button_down():
	if splash_1.is_playing():
		splash_1.stop()
		splash_2.play()
	else:
		get_tree().change_scene_to_packed((load("res://Scenes/main_menu.tscn")))
	pass
