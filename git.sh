#!/bin/bash
#set -e
##################################################################################################################
# Author	:	XXCoreRangerX
# Website	:	https://xxcore.pl
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# First determine whether there aren't any newer files online
echo "Checking for newer files online"
git pull
echo

# Below command will backup everything inside the project directory
echo "Backing up project folder"
git add --all .

# Give a comment to the commit if you want
echo "####################################"
echo "Write your commit comment!"
echo "####################################"
read input
echo

# Committing to the local repository with a message containing the time details and commit text
git commit -S -m "$input"
echo

# Push the local files to github
echo "Pushing to GitHub repo"
git push -u origin master


echo
echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
