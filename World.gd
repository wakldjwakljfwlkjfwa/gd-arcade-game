extends Node2D

var Laser = preload("res://projectiles/PlayerLaser.tscn")

var score = 0

func _on_Player_spawn_laser(location):
	var l = Laser.instance()
	l.global_position = location
	add_child(l)

func score():
	score += 10
	$Score.text = "SCORE: " + str(score)


func _on_EnemySpawner_add_score():
	score()
