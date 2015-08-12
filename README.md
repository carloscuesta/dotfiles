# Carlos Cuesta's dotfiles

These are my dotfiles, I will be making changes and maintaining the repo as I find interesting stuff to add it.

## Setup 

I’ve made a script to make the setup process easy. 

Copy this command into the terminal, and the setup will start.

```bash
git clone https://github.com/carloscuesta/dotfiles && cd dotfiles && ./setup.sh
```

And that’s all! :thumbsup:

The setup process will : 

* Set up OS X computer info (ComputerName, HostName, LocalHostName).
* Set custom OS X preferences.
* Set ZSH shell and [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh).
	* Customize ZSH with Oh-My-Zsh.
* Install the .dotfiles (aliases, functions, exports, extra, zshconfig, gitconfig).
* Install Xcode Command Line Tools (vcs’s like git and compilers).
* Help you to start with setup of Git.

The **dotfiles** will be stored on a folder called `~/.dotfiles/` in your home directory, except for the **zsh files** that will be at `~/` and the **Oh-My-Zsh** themes on `~/.oh-my-zsh/themes/`.

Once the installation process finishes, you will be asked for a restart, some changes may require a restart to apply it. 

I've included two **themes** for iTerm 2 and Terminal: Solarized Dark, Custom Theme. You can find the themes at `/dotfiles/themes/iterm2` - `/dotfiles/themes/terminal`. At the customization part I will explain how to install it and customize it.

## Customization 

You can customize this setup in two ways, the **appearance** and the **functional** parts.

### Appearance

To customize the visual part of the terminal. You will need to install a theme, as I said at the setup part I’ve included two themes, depending If you are using **iTerm2** or **OS X Terminal**.

I use the [Ethan’s Solarized theme](http://ethanschoonover.com/solarized) and one created by me. 

##### iTerm2 

If you want to change the iTerm’s 2 theme, go to `iTerm Preferences > Profiles > + (Create a new profile) > Colors > Load Presets > Import > (Select the theme)`. 

Set as **default** the profile with the theme you like selecting it and going to `Profiles > Other Actions ... > Set as default`.

[Carlos Cuesta Theme](https://github.com/carloscuesta/dotfiles/blob/master/themes/iterm2/carloscuesta.itermcolors) | [Solarized Dark](https://github.com/carloscuesta/dotfiles/tree/master/themes/iterm2/solarized-dark.itermcolors)

<table>
    <tbody>
        <tr><td colspan="2">iTerm2 Themes</tr></td>
        <tr>
            <td>
                <img src="https://cloud.githubusercontent.com/assets/7629661/9222351/7bc4f2b8-40f1-11e5-98bf-f3e66010ee4a.png" alt="iTerm2 Carlos Cuesta Material" width="100%">
            </td>
            <td>
                <img src="https://cloud.githubusercontent.com/assets/7629661/9220888/17f10610-40e6-11e5-9864-96ff1996821b.png" alt="iTerm2 Solarized." width="100%">
            </td>
        </tr>
    </tbody>
</table>

##### OS X Terminal 

If you want to change OS X Terminal theme, go to `Terminal Preferences > Gear Icon > Import`. 

Set as **default** the profile with the theme you like selecting it and clicking on `Default` button.

[Carlos Cuesta Theme](https://github.com/carloscuesta/dotfiles/blob/master/themes/terminal/carloscuesta.terminal) | [Solarized Dark](https://github.com/carloscuesta/dotfiles/tree/master/themes/terminal/solarized-dark.terminal)

<table>
    <tbody>
        <tr><td colspan="2">OS X Terminal</tr></td>
        <tr>
            <td>
                <img src="https://cloud.githubusercontent.com/assets/7629661/9222480/580a2860-40f2-11e5-950b-46ea351c1c37.png" alt="OS X Terminal Custom Theme" width="100%">
            </td>
            <td>
                <img src="https://cloud.githubusercontent.com/assets/7629661/9221000/fd2f9656-40e6-11e5-8a90-a8a669d747b7.png" alt="OS X Terminal Solarized" width="100%">
            </td>
        </tr>
    </tbody>
</table>


### Functionality 

You can change the functionality of every single file included in my [dotfiles repo](https://github.com/carloscuesta/dotfiles/). Going to the `~/.dotfiles/` folder and editing the .files.

```bash
subl ~/.dotfiles/.extra
```
```bash
# .extra file
alias c='clear' # Clear terminal display

function md() {
	mkdir -p "$1" && cd "$1"; 
}

# add whatever you want, and info that shouldn't be in a repository
```

* `.aliases`: Includes the aliases (e.g. `lock`, `c`, `~`, `..`, `myip`)
* `.exports`: Includes the exports path.
* `.functions`: Includes the functions (e.g. `server`, `extract`)
* `.extra`: This is a blank file loaded with .zshrc. Inside of them you can put whatever you want custom functions, aliases, commands that you not want to include in the repository and override the other files.

* `.zshrc`: Includes the zshell configuration.
* `.gitconfig`: Includes the git configuration.