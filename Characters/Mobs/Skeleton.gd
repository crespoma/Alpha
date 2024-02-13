extends CharacterBody2D


const SPEED = 10
const JUMP_VELOCITY = -400.0
var ai_think_time = 4
var ai_think_time_timer = null
var can_move = false;




# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")



func random():
	randomize()
	return randi()%15 - 10 # range is -10 to 10

func _onready():
	pass





func ai_move():
		if(can_move):
			print("cannot move")
			get_node("CollisionShape2D/AnimatedSprite2D").play("Idle")
			return
		else:
			can_move = true;
			get_node("CollisionShape2D/AnimatedSprite2D").play("Walk")
			var direction = Vector2(random(), 0)
			await get_tree().create_timer(10.0).timeout
			print( get_tree().create_timer(10.0).time_left)
			can_move = false;
			

			


func ai_idle():
	get_node("CollisionShape2D/AnimatedSprite2D").play("Idle")



func _process(delta):

	#decide_to_attack()
	ai_move()
	if(can_move):
		move_and_slide()

	

