# reply branded nerd font / powerline theme

add some branding to your favourite work environment. your shell.


this font & zsh configuration adds the reply logo to the available unicode characters.

![screenshot of the console](misc/screen.png?raw=true "screenshot")

# prerequisites

in order to take advantage of the configuration settings that come along with the patched font 
you will need to have the zsh shell installed

`brew install zsh`

# install the patched nerdfont-complete font with the reply logo

install the fonts with the patched reply logo from the `vendor/nerdfont` directory.
you can find the original font compilation under https://github.com/ryanoasis/nerd-fonts

we used [birdfont](https://birdfont.org) to patch the logo in. the code point is encoded as `\U+FD50`.
i should have used one of the [private use areas](https://en.wikipedia.org/wiki/Private_Use_Areas) though. if one of you finds the time to relocate the font to those ranges, a pull request will be appreciated.

# change your terminal settings to the new font

e.g. the configuration settings for iterm2

![screenshot of iterm preferences](misc/iterm-preferences.png?raw=true)

# install the powerlevel9k theme via homebrew

`brew install sambadevi/powerlevel9k/powerlevel9k`

# append the powerlevel zsh configuration to your own .zshrc file

you may want to customize the zsh configuration before appending it to your own configuration file.
our  platform developers might find the customization for aws vault useful though. other than that the configuration might inspire you for
your own hacks. let us know what you come up with.

TL;DR - i like what i see in the picture ;-)

`cat zshrc >> ~/.zshrc`



## some explanation

```zsh
# this will display the forerunner without prompting a newline
POWERLEVEL9K_CUSTOM_OPENREPLY="echo -n '\ufd50'"
# the color of the forerunner
POWERLEVEL9K_CUSTOM_OPENREPLY_FOREGROUND="black"
# change this to your reply companies color approximation
# e.g. see this site for valid options https://jonasjacek.github.io/colors/
POWERLEVEL9K_CUSTOM_OPENREPLY_BACKGROUND="aquamarine1"
# this is optional. configure it as you see fit.
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ip battery)
# the only important part here is the custom_openreply section. the others are optional.
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_openreply custom_awsprofile ssh dir vcs)
```

see [the powerline repository](https://github.com/bhilburn/powerlevel9k) for additional configuration options.
