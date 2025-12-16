extends Node

static func get_attack_animation(context: String, inputs: Dictionary) -> String:
    # Expect keys: punch_1, punch_2, punch_3, kick_1, kick_2
    if context == "stand" and Input.is_action_just_pressed(inputs.get("punch_1", "")) and Input.is_action_just_pressed(inputs.get("punch_2", "")):
        return "hadouken"
    if inputs.has("punch_1") and inputs.punch_1 != "" and Input.is_action_just_pressed(inputs.punch_1):
        return context + "_punch_1"
    elif inputs.has("punch_2") and inputs.punch_2 != "" and Input.is_action_just_pressed(inputs.punch_2):
        return context + "_punch_2"
    elif inputs.has("punch_3") and inputs.punch_3 != "" and Input.is_action_just_pressed(inputs.punch_3):
        return context + "_punch_3"
    elif inputs.has("kick_1") and inputs.kick_1 != "" and Input.is_action_just_pressed(inputs.kick_1):
        return context + "_kick_1"
    elif inputs.has("kick_2") and inputs.kick_2 != "" and Input.is_action_just_pressed(inputs.kick_2):
        return context + "_kick_2"
    return ""

static func play_hitbox_for(anim_player: AnimationPlayer, attack_anim: String) -> void:
    match attack_anim:
        "stand_punch_1":
            anim_player.play("stand_punch_1_hitbox")
        "stand_punch_2":
            anim_player.play("stand_punch_2_hitbox")
        "stand_punch_3":
            anim_player.play("stand_punch_3_hitbox")
        "stand_kick_1":
            anim_player.play("stand_kick_1_hitbox")
        "stand_kick_2":
            anim_player.play("stand_kick_2_hitbox")
        "crouch_kick_1":
            anim_player.play("crouch_kick_1_hitbox")
        "crouch_kick_2":
            anim_player.play("crouch_kick_2_hitbox")
        "crouch_punch_1":
            anim_player.play("crouch_punch_1_hitbox")
        "crouch_punch_2":
            anim_player.play("crouch_punch_2_hitbox")
        "crouch_punch_3":
            anim_player.play("crouch_punch_3_hitbox")
        "jump_punch_1":
            anim_player.play("jump_punch_1_hitbox")
        "jump_punch_2":
            anim_player.play("jump_punch_2_hitbox")
        "jump_kick_1":
            anim_player.play("jump_kick_1_hitbox")
        "jump_kick_2":
            anim_player.play("jump_kick_2_hitbox")
        _:
            pass
