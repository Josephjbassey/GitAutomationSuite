#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 filename"
  exit 1
fi

filename="$1"

# create a new file with touch
touch $filename

if [ ! -s $filename ]; then
echo "File is empty. Please add content to file before proceeding."
read -p "Do you want to add content to the file now? (y/n): " choice

if [ "$choice" = "y" ]; then
echo "Please select a text editor to add content to file:"
select text_editor in "vi" "emacs" "nano" "nvim"
do
	case $text_editor in 
		vi )
			vi $filename
			echo "File content added using vi editor."
			break
			;;
		emacs )
			emacs $filename
			echo "File content added using emacs editor."
			break
			;;
		nano )
			nano $filename
			echo "File content added using nano editor."
			break
			;;
		nvim )
			nvim $filename
			echo "File content added using neovim editor."
			break
			;;

		*)
			echo "Invalid option. Please select a valid text editor."
			esac
	done
else
		echo "Aborting script."
		exit
fi

else
read -p "Do you want to edit the file? (y/n):" edit_choice
if [ "$edit_choice" = "y" ]; then
echo "Please select a text editor to add content to file:"
select text_editor in "vi" "emacs" "nano" "nvim"
do
	case $text_editor in
		vi )
			vi $filename
			echo "File content added using vi editor."
			break
			;;
		emacs)
			emacs $filename
			echo "File content added using emacs editor."
			break
			;;
		nano )
			nano $file
			echo "File content added using nano editor."
			break
			;;
		nvim )
			nvim $filename
			echo "File content added using neovim editor."
			break
			;;
		*)
			echo "Invalid option. Please select a valid text editor."
	esac
done

fi
fi

# change the execute permission for the owner of the file
read -p "Do you want to set permissions to file? (y/n): " exe_choice
if [ "$exe_choice" = "y" ]; then
read -p "Do you want to set file permissions numerical value? (y/n):" perm_choice

	if [ "$perm_choice" = "y" ]; then
		read -p "Enter the permission value (e.g. 755):" perm_value
		chmod $perm_value $filename
		echo "File permissions set to $perm_value"
	else
		chmod u+x $filename
		echo "File permissions set to u+x for owner"
	fi
fi

# add the file to git
read -p "Do you want to push changes to remote repository? (y/n):" push_choice
if  [ "$push_choice" = "y" ]; then
	git add $filename

# Prompt user to select a preferred text editor
echo "Please select a text editor to add content to file: "
	
select text_editor_choice in "vi" "emacs" "nano" "nvim"
do
	case $text_editor_choice in
		vi|emacs|nano|nvim)
			git config --global core.editor "$text_editor_choice"
			echo "Git will be using $text_editor_choice"
			break
			;;
		*)
			echo "Invalid option. Please select a valid text editor."
	esac
done

# prompt the user for a commit message
echo "Enter a commit message"

# commit the changes to the local repository
git commit

# push the changes to the remote repository
git push

# Task Completed
echo "Changes pushed to remote repository"
echo "Task Completed Successfully, Good Job!!!"
fi
sleep 1
echo "Good bye $(git config user.name)"
