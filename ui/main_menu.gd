extends Control

@onready var start_button: Button = %StartButton
@onready var credits_button: Button = %CreditsButton
@onready var quit_button: Button = %QuitButton

@export var main = PackedScene
@export var credits_scene: PackedScene
# recordar cambiar al final por el main_menu a la derecha en inspector de godot

func _ready() -> void:
	start_button.pressed.connect(_on_start_pressed)
	credits_button.pressed.connect(_on_credits_pressed)
	quit_button.pressed.connect(get_tree().quit)
	

func _on_start_pressed() -> void:
	get_tree().change_scene_to_packed(main)
	

func _on_credits_pressed() -> void:
	get_tree().change_scene_to_packed(credits_scene)
	
