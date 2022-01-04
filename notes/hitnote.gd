extends Sprite

var clicktime = 0
var noteline=0
var done=0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	position.y=-200
	pass # Replace with function body.

func initialize(line,time):
	noteline=int(line)
	if line==1:
		position.x=265
	if line==2:
		position.x=525
	if line==3:
		position.x=765
	if line==4:
		position.x=1025
	if line==5:
		position.x=1335
	clicktime=time

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y = 1275 - (clicktime-Global.musictime)*Global.speed
	var grav=Input.get_gravity()
	if Global.musictime-clicktime>500:
		self.queue_free()
#		Global.addcombo()
		Global.resetcombo()
	if done==0 && Global.musictime-clicktime>-100:
		if noteline==2 && grav.x<-1:
			done=1
		if noteline==3 && grav.y<-3:
			done=1
		if noteline==4 && grav.x>1:
			done=1
	if done==1 && noteline>1 &&noteline<5 && Global.musictime-clicktime>0:
		self.queue_free()
	pass
# todo:给方向和note加一个精确判定 用于区分糊和啥东西
func _on_range_pressed():
	if abs(Global.musictime-clicktime) <500:
		Global.addcombo()
		self.queue_free()
	pass # Replace with function body.
	

