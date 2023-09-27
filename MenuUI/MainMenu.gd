extends Control


func _ready():
	#$VBoxContainer/Start.grab_focus()
	pass


func _on_Start_pressed():
	get_tree().change_scene("res://Levels/Level1.tscn")


func _on_Quit_pressed():
	get_tree().quit()
