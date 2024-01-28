extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Knight/AnimatedSprite2D").play("Knight_Idle")
	get_node("Archer/AnimatedSprite2D").play("Archer_Idle")
	get_node("Wizard/AnimatedSprite2D").play("Wizard_Idle")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
