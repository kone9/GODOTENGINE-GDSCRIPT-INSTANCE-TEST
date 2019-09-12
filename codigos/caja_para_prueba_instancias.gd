extends Spatial

export(PackedScene) var cubo
var instanciaCubo
var contador

# Called when the node enters the scene tree for the first time.
func _ready():
	contador = 1


func _physics_process(delta):
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		get_tree().paused = true
	$fps.text = "FPS: " + str(Engine.get_frames_per_second()) #muestra los frames por segundos
	


func _on_Timer_timeout():
	$cantidad_de_cubos.text = "cantidad de cubos = " + str(contador)
	var instanciaCubo = cubo.instance()
	add_child(instanciaCubo)
	instanciaCubo.translation = $posicion_instancia_cubos.translation
	contador += 1
