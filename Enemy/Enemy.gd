extends KinematicBody

var dead = false

func _ready():
	$AnimationPlayer.play("Idle")

func _physics_process(_delta):
	if not dead:
		if $AnimationPlayer.current_animation == "Idle" and randf() < 0.01:
			$AnimationPlayer.play("Attack")

func die():
	if not dead:
		$AnimationPlayer.play("Death")
		dead = true

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name != "Death":
		$AnimationPlayer.play("Idle")
