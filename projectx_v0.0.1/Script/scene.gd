extends Node2D

func _ready():
	var screen_size = get_viewport().get_visible_rect().size

	# 找到子节点
	var collision = $StaticBody2D/CollisionShape2D
	
	# 把 RigidBody2D 固定在底部
	$StaticBody2D.position = Vector2(screen_size.x / 2, screen_size.y - 20)

	# 碰撞形状
	var shape = RectangleShape2D.new()
	shape.extents = Vector2(screen_size.x / 2, 10)
	collision.shape = shape
