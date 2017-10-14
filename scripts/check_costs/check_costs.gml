if Planks > global.Planks {
	NotEnough=30
	ShortageType="Planks"
	exit
	}
if Food > global.Food {
	NotEnough=30
	ShortageType="Food"
	exit
	}
if Stone > global.Stone {
	NotEnough=30
	ShortageType="Stone"
	exit
	}
if Workers > global.Workers {
	NotEnough=30
	ShortageType="Workers"
	exit
	}

ShortageType=""
global.Planks-=Planks
global.Food-=Food
global.Stone-=Stone
global.Workers-=Workers
PlaceBuilding=1