# Carlos dotfiles.

These are my dotfiles, I will be making changes and maintaining the repo as I find interesting stuff to add it.

![dotfiles-jetpack](https://cloud.githubusercontent.com/assets/7629661/10404493/696e4910-6ed3-11e5-9b1a-88065e5e3fef.png)

> Carlos Cuesta's personal dotfiles, that contains all the OS X sensible defaults that I use, must have software and packages, and of course my .files for my OS X system.

[Setup](https://github.com/carloscuesta/dotfiles/#setup) / [Demo](https://github.com/carloscuesta/dotfiles#demo) / [Customization](https://github.com/carloscuesta/dotfiles/#customization) / [Homebrew](https://github.com/carloscuesta/dotfiles/#homebrew-brew) / [Functionality](https://github.com/carloscuesta/dotfiles/#functionality)

## Setup 

I’ve made a script to make the setup process easy. 

Copy this command into the terminal, and the setup will start.

```bash
git clone https://github.com/carloscuesta/dotfiles && cd dotfiles && ./setup.sh
```

And that’s all! :thumbsup:

The **setup process** will : 

* Set up OS X computer info (ComputerName, HostName, LocalHostName).
* Set custom OS X preferences and defaults.
* Set ZSH shell and [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh).
	* Customize ZSH with Oh-My-Zsh.
* Install the .dotfiles (aliases, functions, exports, extra, zshconfig, gitconfig).
* Install Xcode Command Line Tools (vcs’s like git and compilers).
* Help you to start with setup of Git.
* Backup all the files that are going to be modified.
* Install [Homebrew](http://brew.sh) (brew)
* Install packages and software through [brew](https://github.com/carloscuesta/dotfiles/#homebrew-brew)([software and packages list](https://github.com/carloscuesta/dotfiles/#homebrew-brew)).

The **dotfiles** will be stored on a folder called `~/.dotfiles/` in your home directory, except for the **zsh files** that will be at `~/` and the **Oh-My-Zsh** themes on `~/.oh-my-zsh/themes/`.

Once the installation process finishes, you will be asked for a restart, some changes may require a restart to apply it. 

I've included two **themes** for iTerm 2 and Terminal: Solarized Dark, Custom Theme. You can find the themes at `/dotfiles/themes/iterm2` - `/dotfiles/themes/terminal`. At the [customization part](https://github.com/carloscuesta/dotfiles/#customization) I will explain how to install and customize it.

## Demo

![dotfiles](https://cloud.githubusercontent.com/assets/7629661/10410526/871e0c90-6f44-11e5-813f-49ea868cc2f4.gif)

## Customization 

You can customize this setup in two ways, the **appearance** and the **functional** parts.

### Appearance

To customize the visual part of the terminal. You will need to install a theme, as I said at the setup part I’ve included two themes, depending If you are using **iTerm2** or **OS X Terminal**.

I use the [Ethan’s Solarized theme](http://ethanschoonover.com/solarized) and one created by me. 

#### iTerm2 

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

#### OS X Terminal 

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

## Homebrew (brew)

The dotfiles script will **ask to install** the following packages and software: 

**Developer**

* [Node](https://nodejs.org) & [npm](https://www.npmjs.com) (using the recommended installation method).
    * [Bower](http://bower.io)
    * [Gulp](http://gulpjs.com)
    * [Grunt](http://gruntjs.com)
    * [Yeoman](http://yeoman.io)
    * [Webpack](http://webpack.github.io)
    * [Less](http://lesscss.org)
    * [JSHint](http://jshint.com)
    * [JSCS](http://jscs.info)
    * [CSSLint](https://github.com/CSSLint/csslint)

**OSX Software**

* [Sublime Text 3](http://www.sublimetext.com/3)
* [iTerm2](https://iterm2.com) 
* [Smcfancontrol](http://www.eidac.de) 
* [Spectacle](http://spectacleapp.com) 
* [Dropbox](https://www.dropbox.com) 
* [Slack](https://slack.com) 
* [Skype](http://www.skype.com/) 
* [gfxCardStatus](https://gfx.io)
* [Google Chrome](https://www.google.com/chrome/)
* [Firefox Developer Edition](https://www.mozilla.org/es-ES/firefox/developer/)

### Functionality 

You can change the functionality of every single file included in my [dotfiles repo](https://github.com/carloscuesta/dotfiles/). Going to the `~/.dotfiles/` folder and editing the .files.

* `.aliases`: Includes the aliases (e.g. `lock`, `c`, `~`, `..`, `myip`)
* `.exports`: Includes the exports path.
* `.functions`: Includes the functions (e.g. `server`, `extract`)
* `.extra`: This is a blank file loaded with .zshrc. Inside of them you can put whatever you want custom functions, aliases, commands that you not want to include in the repository and override the other files.

* `.zshrc`: Includes the zshell configuration.
* `.gitconfig`: Includes the git configuration.

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

## Acknowledgements

Inspiration and code was taken from many sources, including:

* [@mathiasbynens](https://github.com/mathiasbynens) (Mathias Bynens)
  [https://github.com/mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
* [@alrra](https://github.com/alrra) (Cãtãlin Mariş)
  [https://github.com/alrra/dotfiles](https://github.com/alrra/dotfiles)
* [@paulirish](https://github.com/paulirish) (Paul Irish)
  [https://github.com/paulirish/dotfiles](https://github.com/paulirish/dotfiles)
* [@nathaniellandau](http://natelandau.com) (Nathaniel Landau)

## License

The code is available under the [MIT license](https://github.com/carloscuesta/dotfiles/blob/master/license.txt).
