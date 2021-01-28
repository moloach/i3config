source $HOME/.cargo/env
set PATH /home/moloach/.dotnet $PATH
set PATH /home/moloach/.local/bin $PATH


# pyenv init
if command -v pyenv 1>/dev/null 2>&1
  pyenv init - | source
end
