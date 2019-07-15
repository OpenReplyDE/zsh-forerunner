# Load Nerd Fonts with Powerlevel9k theme for Zsh
POWERLEVEL9K_MODE='nerdfont-complete'
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
# Customise the Powerlevel9k prompts
function aws_profile {
    case "$AWS_VAULT" in
        "companion-stage")
            echo -n "%F{black}\uf270 STAGE"
        ;;
        "companion-live")
            echo -n "%F{red}\uf270 LIVE!"
        ;;
        *)
    esac;
}

POWERLEVEL9K_CUSTOM_AWSPROFILE="aws_profile"
POWERLEVEL9K_CUSTOM_AWSPROFILE_LIVE_BACKGROUND="white"

POWERLEVEL9K_CUSTOM_OPENREPLY="echo -n '\ufd50'"
POWERLEVEL9K_CUSTOM_OPENREPLY_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_OPENREPLY_BACKGROUND="aquamarine1"
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ip battery)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_openreply custom_awsprofile ssh dir vcs)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="Default"