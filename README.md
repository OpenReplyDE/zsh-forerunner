# reply branded nerd font / powerline theme

add some branding to your favourite work environment. your shell.


this font & zsh configuration adds the reply logo to the available unicode characters.

![screenshot of the console](misc/screen.png?raw=true "screenshot")

## 🔌  prerequisites

in order to take advantage of the configuration settings that come along with the patched font you will need to have the zsh shell and [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) installed

`brew install zsh`

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

## 1️⃣ install the patched nerdfont-complete font with the reply logo

install the fonts with the patched reply logo from the `vendor/nerdfont` directory.
you can find the original font compilation under https://github.com/ryanoasis/nerd-fonts

only the _regular_ font file has been patched. the italic and bold version are in their vanilla states!

we used [birdfont](https://birdfont.org) to patch the logo in. the code point is encoded as `\U+FD50`.
i should have used one of the [private use areas](https://en.wikipedia.org/wiki/Private_Use_Areas) though. if one of you finds the time to relocate the font to those ranges, a pull request will be appreciated.

## 2️⃣ change your terminal settings to the new font

e.g. the configuration settings for iterm2

![screenshot of iterm preferences](misc/iterm-preferences.png?raw=true)

## 3️⃣ install the powerlevel9k theme via homebrew

`brew install sambadevi/powerlevel9k/powerlevel9k`

## 🆙 append the powerlevel zsh configuration to your own .zshrc file

this repo contains a `zshrc` file which contains preconfigured, helpful configuration, check it out.
you may want to customize this `zshrc` configuration before appending it to your own configuration file.
our  platform developers might find the customization for aws vault useful though.
other than that the configuration might inspire you for your own hacks. let us know what you come up with.

TL;DR - i like what i see in the picture ;-)

enter following line to append the content of the `zshrc` file to your config.

`cat zshrc >> ~/.zshrc`

### 🛠 some customization options

```zsh
# this will display the forerunner without prompting a newline
POWERLEVEL9K_CUSTOM_OPENREPLY="echo -n '\ufd50'"

# the color of the forerunner
POWERLEVEL9K_CUSTOM_OPENREPLY_FOREGROUND="black"

# change this to your reply companies color approximation
# e.g. see this site for valid options https://jonasjacek.github.io/colors/
POWERLEVEL9K_CUSTOM_OPENREPLY_BACKGROUND="aquamarine1"

# this is optional. configure it as you see fit. we preconfigured python virtuelenv to be displayed when activated.
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv ip battery)

# the only important part here is the custom_openreply section. the others are optional.
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_openreply custom_awsprofile ssh dir vcs)
```

see [the powerline repository](https://github.com/bhilburn/powerlevel9k) for additional configuration options.

