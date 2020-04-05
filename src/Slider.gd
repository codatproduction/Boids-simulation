extends Control

signal value_changed

func _ready():
	$HSlider.connect("value_changed", self, "on_slider_changed")
	$Value.text = str($HSlider.value)

func on_slider_changed(value):
	$Value.text = str(value)
	emit_signal("value_changed", value)
