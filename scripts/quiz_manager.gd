extends Node

var questions = []

var current_question = {}


func load_questions():
	var file = FileAccess.open(
		"res://data/questions.json",
		FileAccess.READ
	)

	var content = file.get_as_text()

	questions = JSON.parse_string(content)


func get_random_question():

	if questions.size() == 0:
		load_questions()

	current_question = questions.pick_random()

	return current_question


func check_answer(answer_index:int):

	if answer_index == current_question["correct_answer"]:
		return true

	return false
