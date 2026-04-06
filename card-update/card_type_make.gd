extends Sprite2D
# card _ scene code
@onready var card: Sprite2D = $"."
var card_face = randi_range(0,6)
#var card_face = 7
var card_dungon_loot = randi_range(8,10)
var card_battle_loot = randi_range(1,3) 
var t = SGC_CWT.tank
var v = SGC_CWT.vangard
var m = SGC_CWT.mage
var h = SGC_CWT.hp
var n = SGC_CWT.no_action
var k = SGC_CWT.key
var l = SGC_CWT.lock
var c = SGC_CWT.copper
var s = SGC_CWT.silver
var g = SGC_CWT.gold
var coin = SGC_CWT.coin

func update():
	SGC_CWT.tank = t
	SGC_CWT.vangard = v
	SGC_CWT.mage = m
	SGC_CWT.hp = h
	SGC_CWT.no_action = n
	SGC_CWT.key = k
	SGC_CWT.lock = l
	SGC_CWT.copper = c
	SGC_CWT.silver = s
	SGC_CWT.gold = g
	SGC_CWT.coin = coin

func _on_hit_box_box_mouse_entered() -> void:
	if true:
		card.frame = card_face + 1
		match card_face:
			1:t += 1 
			1:print("def ="+t)
			1:card.frame = card_face + 1
			2:v += 1
			2:print("atk ="+v)
			2:card.frame = card_face + 1
			3:m += 1
			3:print("magic ="+m)
			3:card.frame = card_face + 1
			4:h += 1
			#4:print(hp=+h)
			#4:
			5:h -= 1
			6:k += 1
			7:l += 1
			_:print("null")
func _on_hit_box_box_mouse_exited() -> void:
	if card_face == 7 and k<=1:
		l -= 1
		k -= 1
		pass
	update()
	pass # Replace with function body.
