extends StaticBody2D

@onready var Border_Up = $Up
@onready var Border_Down = $Down
@onready var Border_Left = $Left
@onready var Border_Right = $Right

func _ready():
	BorderUp()
	BorderDown()
	BorderLeft()
	BorderRight()

func BorderUp():
	var Border_Segment: SegmentShape2D = Border_Up.shape
	Border_Segment.a = Vector2(0, 0)
	Border_Segment.b = Vector2(1920, 0)
	Border_Up.shape = Border_Segment

func BorderDown():
	var Border_Segment: SegmentShape2D = Border_Down.shape
	Border_Segment.a = Vector2(0, 1080)
	Border_Segment.b = Vector2(1920, 1080)
	Border_Down.shape = Border_Segment

func BorderLeft():
	var Border_Segment: SegmentShape2D = Border_Left.shape
	Border_Segment.a = Vector2(0, 0)
	Border_Segment.b = Vector2(0, 1080)
	Border_Left.shape = Border_Segment

func BorderRight():
	var Border_Segment: SegmentShape2D = Border_Right.shape
	Border_Segment.a = Vector2(1920, 0)
	Border_Segment.b = Vector2(1920, 1080)
	Border_Right.shape = Border_Segment
