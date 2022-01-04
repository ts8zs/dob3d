extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.score=0
	Global.combo=0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_LinkButton_pressed():
	pass # Replace with function body.


func _on_StartButton_pressed():
	get_tree().change_scene("res://2D_in_3D.tscn")
	pass # Replace with function body.


func _on_HSlider_value_changed(value):
	Global.speed=value
#	Global.speed=value
