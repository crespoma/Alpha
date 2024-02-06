extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Knight/AnimatedSprite2D").play("Knight_Idle")
	get_node("Archer/CharacterBody2D/AnimatedSprite2D").play("Archer_Idle")
	get_node("Wizard/CharacterBody2D/AnimatedSprite2D").play("Wizard_Idle")
	
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	


func _on_knight_start_pressed():
	get_tree().change_scene_to_file("res://Worlds/World1/Knight/World1.tscn")


func _on_ranger_start_pressed():


	get_tree().change_scene_to_file("res://Worlds/World1/World1.tscn")


func _on_wizard_start_pressed():

	get_tree().change_scene_to_file("res://Worlds/World1/World1.tscn")


