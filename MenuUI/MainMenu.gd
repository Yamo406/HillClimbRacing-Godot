extends Control


func _ready():
	$ColorRect/VBoxContainer/Start.grab_focus()
	

func _on_Start_pressed():
	get_tree().change_scene("res://MenuUI/LevelPicker.tscn")


func _on_Quit_pressed():
	get_tree().quit()
