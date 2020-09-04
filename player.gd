extends KinematicBody2D

var velocidade = 100;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	

func _physics_process(delta):
	var movimento = Vector2();
	
	if Input.is_action_pressed("ui_down"):
		movimento.y = velocidade;
		
	elif Input.is_action_pressed("ui_up"):
		movimento.y = - velocidade;
		
	elif Input.is_action_pressed("ui_right"):
		movimento.x = velocidade;
		
	elif Input.is_action_pressed("ui_left"):
		movimento.x = - velocidade
		
	
	move_and_slide(movimento);
