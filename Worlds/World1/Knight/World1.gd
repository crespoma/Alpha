extends Node2D




# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Knight/WeaponIcon").set("visible",false)
	get_node("Knight/AnimatedSprite2D").play("Knight_Idle")
	get_node("Skeleton/CollisionShape2D/AnimatedSprite2D").play("Idle")
	
	
func _physics_process(delta):
	stop_moving()
	
	
	pass

func stop_moving():
	pass
	

	
	
	
	

	
	

	
	
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.

