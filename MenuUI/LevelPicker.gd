extends Control


func _ready():
	$Background/VBoxContainer/LEVEL_1.grab_focus()


func _on_LEVEL_1_pressed():
	get_tree().change_scene("res://Levels/Level_1.tscn")


func _on_LEVEL_2_pressed():
	get_tree().change_scene("res://Levels/Level_2.tscn")


func _on_LEVEL_3_pressed():
	get_tree().change_scene("res://Levels/Level_3.tscn")
