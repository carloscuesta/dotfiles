source './osx/utils.sh'

# restart : asks for a reboot of the system.

restart() {

	print_succes "Done!. Some changes may not apply until you restart"
	ask_for_confirmation "Would you like to Restart now ?"

	if answer_is_yes; then
		sudo shutdown -r now "Restarting ..."
	else 
	print_error "You will need to restart manually later."
	fi

}

restart