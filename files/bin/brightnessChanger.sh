VAL="";
if [[ -z "$1" ]] 
then
	echo "enter a value between 0 and $(cat /sys/class/backlight/intel_backlight/max_brightness)";
	read VAL;
else
	VAL=$1;
fi

echo $VAL | sudo tee /sys/class/backlight/intel_backlight/brightness;
