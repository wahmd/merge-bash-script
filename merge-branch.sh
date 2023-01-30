#!/bin/bash


if [ -z "$1" ] 
then
	echo -e "Missing: Provide Merge branch Name! \nLike: \nbash $0 <MERGE_BRANCH>"
	exit 0
fi

CURR_BRANCH=$(git branch --show-current)
DATE=$(date)
echo -e "\n"
read -p "This script updates the current branch:$CURR_BRANCH by merging remote branch: $1 into it. 
Do you wish to continue? (y/n)" ACTION

if [ "$ACTION" = "y" ] 
then
	echo -e "\n"
	echo -e "\e[1;44m STASHING CHANGES.... \e[0m"
	git stash -m "$DATE Stashed by Script"
	
	echo -e "\n"
	echo -e "\e[1;44m SWITCHING TO BRANCH: $1 ... \e[0m"
	git checkout $1

	echo -e "\n"
	echo -e "\e[1;44m PULLING LATEST CHANGES FROM $1.... \e[0m"
	git pull origin $1

	echo -e "\n"
	echo -e "\e[1;44m SWITCHING BACK TO: $CURR_BRANCH ...\e[0m"
	git checkout $CURR_BRANCH

	echo -e "\n"
	echo -e "\e[1;44m MERGING $1 into $CURR_BRANCH .... \e[0m"	
	git merge $1
fi


echo "Done."
