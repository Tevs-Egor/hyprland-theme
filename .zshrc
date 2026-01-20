export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="kali-like"

ENABLE_CORRECTION="true"

plugins=(git)
plugins=(git docker gcloud terraform vagrant zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias zshConfig="nano ~/.zshrc"

alias qtileConfig="nano ~/.config/qtile/config.py"

alias i3Config="nano ~/.config/i3/config"

alias alacrittyConfig="nano ~/.config/alacritty/alacritty.toml"

alias hyprlandConfig="nano ~/.config/hypr/hyprland.conf"

alias hyprlockConfig="nano ~/.config/hypr/hyprlock.conf"

alias waybarConfig="nano ~/.config/waybar/config"

alias waybarStyle="nano ~/.config/waybar/style.css"

alias fixZsh="cd && mv .zsh_history .zsh_history_bad && strings .zsh_history_bad > .zsh_history && fc -R .zsh_history && rm ~/.zsh_history_bad"

alias pixel_9="Android/Sdk/emulator/emulator -avd Pixel_9 \-gpu host \-accel on \-no-snapshot \-verbose"

export PATH="$PATH:/home/egor/.local/bin"

export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export PATH="$ANDROID_SDK_ROOT/platform-tools:$PATH"
export PATH="$ANDROID_SDK_ROOT/emulator:$PATH"
export PATH="$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$PATH"
