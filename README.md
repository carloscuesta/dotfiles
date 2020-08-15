# Carlos Cuesta dotfiles.

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

## Demo

![dotfiles](https://cloud.githubusercontent.com/assets/7629661/10410526/871e0c90-6f44-11e5-813f-49ea868cc2f4.gif)

## Customization

You can customize this setup in two ways, the **appearance** and the **functional** parts.

### Appearance

To customize the visual part of the terminal. You will need to install a theme. An **iTerm** theme has been provided.

I use a theme called [materialshell](https://github.com/carloscuesta/materialshell).

#### iTerm2

If you want to change the iTerm’s 2 theme, go to `iTerm Preferences > Profiles > + (Create a new profile) > Colors > Load Presets > Import > (Select the theme)`.

Set as **default** the profile with the theme you like selecting it and going to `Profiles > Other Actions ... > Set as default`.

#### OS X Terminal

If you want to change OS X Terminal theme, go to `Terminal Preferences > Gear Icon > Import`.

Set as **default** the profile with the theme you like selecting it and clicking on `Default` button.

## Homebrew (brew)

The dotfiles script will **ask to install** the following packages and software:

**Developer**

* [Node](https://nodejs.org) & [npm](https://www.npmjs.com) (using the recommended installation method).
* [Gitmoji-cli](https://gitmoji.carloscuesta.me)
* [React-native-cli](https://facebook.github.io/react-native/docs/getting-started.html)
* [Npm](https://www.npmjs.com/)
* [Yarn](https://classic.yarnpkg.com/en/)

**OSX Software**

* [iTerm](https://iterm2.com)
* [Rectangle](https://rectangleapp.com/)

### Functionality

You can change the functionality of every single file included in my [dotfiles repo](https://github.com/carloscuesta/dotfiles/). Going to the `~/.dotfiles/` folder and editing the .files.

* `.aliases`: Includes the aliases (e.g. `lock`, `c`, `~`, `..`, `myip`)
* `.exports`: Includes the exports path.
* `.functions`: Includes the functions (e.g. `server`, `extract`)
* `.extra`: This is a blank file loaded with .zshrc. Inside of them you can put whatever you want custom functions, aliases, commands that you not want to include in the repository and override the other files.

* `.zshrc`: Includes the zshell configuration.
* `.gitconfig`: Includes the git configuration.

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
