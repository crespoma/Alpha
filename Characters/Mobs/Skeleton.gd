extends CharacterBody2D


const SPEED = 15
const JUMP_VELOCITY = -400.0
var ai_think_time = 4
var ai_think_time_timer = null
var can_move = false;
var direction = null
var lastdirection = null
















# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _ready():
	print(get_node("Knight"))
	pass
	
	
	



func random():
	randomize()
	return randi()%20 - 10 # range is -10 to 10

func ai_move():
		#print(currentKnight)
		await get_tree().create_timer(4.0).timeout
		if(can_move):
			#print("moving")
			
			get_node("CollisionShape2D/AnimatedSprite2D").play("Walk")
			#var random = random()
			await get_tree().create_timer(4.0).timeout
			#direction = currentKnight.global_position
			print(direction)
			


			if(( lastdirection != null) and (lastdirection.x > direction.x)):
				print(lastdirection)
				print("moving based on last direction")
				velocity = -1 * lastdirection * SPEED
				
			else:
				print(direction)
				print("moving based on current direction")
				velocity = 1 * direction * SPEED
			move_and_slide()
			await get_tree().create_timer(4.0).timeout
			lastdirection = direction
			can_move = false
			await get_tree().create_timer(4.0).timeout
		else:
			get_node("CollisionShape2D/AnimatedSprite2D").play("Idle")
			await get_tree().create_timer(4.0).timeout
			can_move = true

			


func ai_idle():
	get_node("CollisionShape2D/AnimatedSprite2D").play("Idle")



func _process(delta):
	ai_move()
	#print(root)
	
	
	#var Knight = root.get_node("Knight")
	#print(Knight)
	#decide_to_attack()
	#if(player != null):
		#ai_move(player)
	#else:
		#print("Knight not in scene")
