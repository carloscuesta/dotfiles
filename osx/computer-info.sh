source './osx/utils.sh'

# set_computer_info : Allows you to set ComputerName, HostName
# and LocalHostName through the keyboard
# (if you have setup this, comment lines 13 to 24)

set_computer_info() {

	print_in_blue "Computer Information\n\n"
	print_question "Computer Name : "
	read computer_name
	print_question "Host Name : "
	read host_name
	print_question "LocalHostName : "
	read local_host_name

	sudo scutil --set ComputerName "$computer_name"
	sudo scutil --set HostName "$host_name"
	sudo scutil --set LocalHostName "$local_host_name"
}

set_computer_info
