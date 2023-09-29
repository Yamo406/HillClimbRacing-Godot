extends Node2D

var coins_collected = 0

func coinScore(amount):
	coins_collected += amount
	$UI/UI/HBoxContainer/Counters/Coins/Coins.text = str(coins_collected)
	
func update_fuel(value):
	$UI/UI/HBoxContainer/Counters2/Fuel/HBoxContainer/CenterContainer/ProgressBar.value = value
	var stylebox = $UI/UI/HBoxContainer/Counters2/Fuel/HBoxContainer/CenterContainer/ProgressBar.get("custom_styles/fg")
	stylebox.bg_color.h = lerp(0, 0.3, value / 100)
	if value == 0:
		$UI/UI/HBoxContainer/Counters2/Fuel/HBoxContainer/AnimationPlayer.play("Alarm")
	else:
		$UI/UI/HBoxContainer/Counters2/Fuel/HBoxContainer/AnimationPlayer.play("idle")
