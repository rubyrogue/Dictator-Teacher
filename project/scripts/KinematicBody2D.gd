extends KinematicBody2D
#esse script é de um KinematicBody2D

#chamado quando o nó é carregado
#func _ready():
#	pass # Replace with function body.


var direcao = Vector2()

#chamado a cada frame
#nesse método roda a lógica do nó
func _process(delta):
	#reseta direção
	direcao = Vector2()
	#andar para a ESQUERDA
	if Input.is_action_pressed("ui_left"):
		direcao.x = -1
	#andar para a DIREITA
	if Input.is_action_pressed("ui_right"):
		direcao.x = 1
	#andar para a CIMA
	if Input.is_action_pressed("ui_up"):
		direcao.y = -1
	#andar para a BAIXO
	if Input.is_action_pressed("ui_down"):
		direcao.y = 1
	
func _physics_process(delta):
	move_and_slide(direcao * 666)
	
	
# Declare member variables here. Examples:
# var a = 2
# var b = "text"




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
