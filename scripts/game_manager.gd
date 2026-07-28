extends Node

# Global game controller

var player_name = "Explorer"

var score: int = 0
var level: int = 1
var questions_completed: int = 0


func add_score(amount:int):
	score += amount


func complete_question():
	questions_completed += 1


func reset_game():
	score = 0
	level = 1
	questions_completed = 0


func get_player_progress():
	return {
		"score": score,
		"level": level,
		"questions": questions_completed
	}
