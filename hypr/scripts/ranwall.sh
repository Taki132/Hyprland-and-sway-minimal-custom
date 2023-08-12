img=(`find ~/.config/Wall/ -name '*' -exec file {} \; | grep -o -P '^.+: \w+ image' | cut -d':' -f1`)
while true
do
   swaybg -i "${img[$RANDOM % ${#img[@]} ]}" -m fill
done
