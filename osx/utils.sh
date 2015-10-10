# Alrra utils.sh (https://github.com/alrra/dotfiles/blob/master/os/utils.sh) from his dotfiles repo
# I added extra functions

answer_is_yes() {
    [[ "$REPLY" =~ ^[Yy]$ ]] \
        && return 0 \
        || return 1
}

ask() {
    print_question "$1"
    read
}

ask_for_confirmation() {
    print_question "$1 (y/n) "
    read -n 1
    printf "\n"
}

ask_for_sudo() {

    # Ask for the administrator password upfront
    sudo -v &> /dev/null

    # Update existing `sudo` time stamp until this script has finished
    # https://gist.github.com/cowboy/3118588
    while true; do
        sudo -n true
        sleep 60
        kill -0 "$$" || exit
    done &> /dev/null &

}

directory_exists() {
    if [ -d $1 ]; then
        execute "mv $1 $1-backup/"
        print_in_blue "  Your $1 folder is backed-up in $1-backup/\n"
        execute "mkdir $1"
    else
        execute "mkdir $1"
        print_success "$1 directory created at $1"
    fi
}

directory_backup() {
    if [ -d $1 ]; then
        execute "mv $1 $1-backup/"
        print_in_blue "  Your $1 folder is backed-up in $1-backup/\n"
    fi
}

brew_install() {
   ask_for_confirmation "Would you like to install $1 ?"
    if answer_is_yes; then
        execute "brew install $1"
        print_success "$1 installed."
    else
        print_error "$1 not installed."
    fi
}

brew_cask_install() {
    ask_for_confirmation "Would you like to install $1 ?"
    if answer_is_yes; then
        execute "brew cask install $1"
        print_success "$1 installed."
    else
        print_error "$1 not installed."
    fi
}

npm_install() {
    ask_for_confirmation "Would you like to install $1 ?"
    if answer_is_yes; then
        execute "npm install -g $1"
        print_success "$1 installed."
    else
        print_error "$1 not installed."
    fi
}

file_exists() {
    if [ -f $1 ]; then
        execute "mv $1 $1-backup"
        print_in_blue "$1 backed up $1-backup\n"
    fi
}

cmd_exists() {
    command -v "$1" &> /dev/null
    return $?
}

execute() {
    eval "$1" &> /dev/null
    print_result $? "${2:-$1}"
}

get_answer() {
    printf "$REPLY"
}

get_os() {

    declare -r OS_NAME="$(uname -s)"
    local os=''

    if [ "$OS_NAME" == "Darwin" ]; then
        os='osx'
    elif [ "$OS_NAME" == "Linux" ] && [ -e "/etc/lsb-release" ]; then
        os='ubuntu'
    else
        os="$OS_NAME"
    fi

    printf "%s" "$os"

}

is_git_repository() {
    git rev-parse &> /dev/null
    return $?
}

mkd() {
    if [ -n "$1" ]; then
        if [ -e "$1" ]; then
            if [ ! -d "$1" ]; then
                print_error "$1 - a file with the same name already exists!"
            else
                print_success "$1"
            fi
        else
            execute "mkdir -p $1" "$1"
        fi
    fi
}

print_error() {
    print_in_red "  [✖] $1 $2\n"
}

print_in_green() {
    printf "\e[0;32m$1\e[0m"
}

print_in_purple() {
    printf "\e[0;35m$1\e[0m"
}

print_in_red() {
    printf "\e[0;31m$1\e[0m"
}

print_in_yellow() {
    printf "\e[0;33m$1\e[0m"
}

print_in_blue() {
    printf "  \e[0;34m$1\e[0m\n"
}

print_info() {
    print_in_purple "\n $1\n\n"
}

print_question() {
    print_in_yellow "  [?] $1"
}

print_result() {
    [ $1 -eq 0 ] \
        && print_success "$2" \
        || print_error "$2"

    return $1
}

print_success() {
    print_in_green "  [✔] $1\n"
}
