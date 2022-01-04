extends Node
var musictime = 0
var speed=1
var score=0
var combo=0
var maxcombo=0

func addscore(addscore):
	score+=addscore
func addcombo():
	combo+=1
	addscore(combo)
	if combo>maxcombo:
		maxcombo=combo
func resetcombo():
	combo=0
