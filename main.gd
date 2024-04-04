extends Node2D

func _ready():
	Global.sounds_toggled.connect(_on_sounds_toggled)

func _on_sounds_toggled(toggled_on):
	print("sounds toggled to "+toggled_on)
	var bus_idx = AudioServer.get_bus_index("Master")
	AudioServer.set_bus_mute(bus_idx, !toggled_on)
