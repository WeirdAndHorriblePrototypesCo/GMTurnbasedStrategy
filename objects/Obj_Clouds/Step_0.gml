/// @description Hide the cloud

if image_alpha < Strength && Speed != 0 {
	image_alpha+=0.01
	}
if Speed == 0 && image_alpha != 0 || image_alpha > Strength {
	image_alpha-=0.01
	}

if Move == 1 {
	if Direction <= 90 {
		x+=global.GridWidth*-floor(Speed)
		}
	if Direction <= 180 && Direction > 90 {
		y+=global.GridHeight*-floor(Speed)
		}
	if Direction <= 270 && Direction > 180 {
		x+=global.GridWidth*floor(Speed)
		}
	if Direction <= 360 && Direction > 270 {
		y+=global.GridHeight*floor(Speed)
		}
	Move=0
	}
