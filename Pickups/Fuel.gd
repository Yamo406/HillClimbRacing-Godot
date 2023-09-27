extends Area2D

export (int) var value = 5

var picked_up = false

func _on_Fuel_body_entered(body):
	if body.is_in_group("Player") && !picked_up:
		get_tree().get_current_scene().get_node("Player").refuel()
		$AnimationPlayer.play("Pickup")
		$CollisionShape2D.set_deferred("disabled", true)
		picked_up = true

func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
