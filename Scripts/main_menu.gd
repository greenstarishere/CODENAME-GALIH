extends Control

@onready var ClassAnimation := $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	ClassAnimation.play("RESET")
	TranslationServer.set_locale("en")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_btn_play_button_down():
	ClassAnimation.play("start")
	pass # Replace with function body.

func _on_btn_settings_button_down():
	ClassAnimation.play("openPanelSettings")
	pass # Replace with function body.

func _on_back_button_down():
	ClassAnimation.play("resetPanelSettings")
	pass # Replace with function body.

func _on_lang_select_item_selected(index):
	ClassAnimation.stop(true)
	match index:
		0:
			TranslationServer.set_locale("en")
		1:
			TranslationServer.set_locale("id")
		2:
			TranslationServer.set_locale("jp")
	ClassAnimation.play("change_language")
	pass # Replace with function body.
