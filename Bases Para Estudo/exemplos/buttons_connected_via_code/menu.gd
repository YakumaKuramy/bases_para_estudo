extends Control

@onready var hbox = $hbox

func _ready():
	for i in $hbox.get_child_count():
		$hbox.get_child(i).connect("pressed", _on_button_pressed, i)

func _on_button_pressed(id_button) -> void:
	print(id_button.name)
