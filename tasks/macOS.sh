set -euo pipefail
source "$UTILS"

set_computer_info() {
  print_question "Computer Name: "
  read computer_name
  print_question "Host Name: "
  read host_name
  print_question "LocalHostName: "
  read local_host_name

  sudo scutil --set ComputerName "$computer_name"
  sudo scutil --set HostName "$host_name"
  sudo scutil --set LocalHostName "$local_host_name"
}

os_preferences() {
	# Show the ~/Library folder
	chflags nohidden ~/Library
	print_success "Library shown."

	# Scroll direction natural : False
	defaults write -g com.apple.swipescrolldirection -bool false
	print_success "Scroll direction natural (Lion style) set to false."

	# Automatically hide and show the Dock
	defaults write com.apple.dock autohide -bool true
	print_success "Automatically hide and show the Dock."

	# Check for software updates daily, not just once per week
	defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
	print_success "Software updates checking daily"

	# Trackpad: map bottom right corner to right-click
	defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
	defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
	defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
	defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true
	print_success "Right click mapped to the bottom right corner at the trackpad."

	# Enable full keyboard access for all controls
	# (e.g. enable Tab in modal dialogs)
	defaults write NSGlobalDomain AppleKeyboardUIMode -int 2
	print_success "Full keyboard acces for all controls enabled."

	# Set the timezone; see `sudo systemsetup -listtimezones` for other values
	sudo systemsetup -settimezone "Europe/Brussels" > /dev/null
	print_success "Time zone set to : Europe/Brussels"

	# Enable the Develop menu and the Web Inspector in Safari
	defaults write com.apple.Safari IncludeDevelopMenu -bool true
	defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
	defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
	print_success "Safari developer tools and web inspector enabled."
}

main() {
  print_info "macOS setup"
  set_computer_info
  os_preferences
}
