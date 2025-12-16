extends ProgressBar

var player: CharacterBody2D
const HPBarHelper = preload("res://scenes/hud/modules/hpbar_helper.gd")

func update():
	if player:
		value = HPBarHelper.compute_value(player.current_health, player.max_health)

func _ready() -> void:
	var hud_node = get_parent().get_parent()
	var player_path = NodePath("../../" + str(hud_node.player_path))
	if player_path:
		player = get_node(player_path) as CharacterBody2D
		if player:
			player.HPLoss.connect(update)
			update()
		else:
			print("Node at player_path isn't a CharacterBody2D")
	else:
		print("player_path not set in inspector in HUD")


func _process(delta: float) -> void:
	pass
