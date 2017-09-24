/// @description Hide the cloud

if irandom(2500) == 1 {
	HideCloud = 350
	}
if HideCloud != 0 {
	HideCloud-=1
	image_alpha-=0.01
	}
if HideCloud == 0 && image_alpha != 1 && speed > 0.25 {
	image_alpha+=0.01
	}
if speed < 0.25 && image_alpha != 0 {
	image_alpha-=0.01
	}