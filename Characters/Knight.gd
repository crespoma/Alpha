extends CharacterBody2D
const SPEED = 150
const JUMP_VELOCITY = -400
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var KnightAnim = get_node("AnimatedSprite2D")




# Called when the node enters the scene tree for the first time.

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * float(delta)
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		KnightAnim.play("Knight_walk")
		velocity.x = direction * SPEED
	else:
		KnightAnim.play("Knight_Idle")
		velocity.x = move_toward(velocity.x,0,SPEED)

	move_and_slide()

# Called when the node enters the scene tree for the first time.
