
#!/bin/bash
#script to demo file operations
#Author= Team9 Engineer
echo "This is being executed by $USER from $(pwd)!!!!!"
echo -n "Enter your name: "
read name
echo -n "Enter your team at Etech: "
read team
echo "Welcome to Etechdevops master class" > $name
mkdir $team
cp $name $team
ln $team/$name /tmp/$name
ls /tmp | grep $name
