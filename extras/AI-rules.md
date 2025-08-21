# Warp Settings -> AI -> Knowledge -> Rules

## 2025-08-12 added (but later removed)

> I have been learning Neovim by trying different distros and my own
> configurations so I set a lot of aliases for using different nvim
> configuration directories:
>
> alias nvim-ks='NVIM_APPNAME="nvim-kickstart" nvim' alias
> ks='NVIM_APPNAME="nvim-kickstart" nvim' alias
> nvim-nc='NVIM_APPNAME="nvim-nvchad" nvim' alias
> nvim-nc2='NVIM_APPNAME="nvim-nvchad2" nvim' alias
> nc2='NVIM_APPNAME="nvim-nvchad2" nvim' alias
> nvim-lv='NVIM_APPNAME="nvim-lazyvim" nvim' alias
> lv='NVIM_APPNAME="nvim-lazyvim" nvim' alias
> nvim-lv2='NVIM_APPNAME="nvim-lv2" nvim' alias
> lv2='NVIM_APPNAME="nvim-lv2" nvim' alias
> nvim-my='NVIM_APPNAME="nvim-my" nvim' alias
> nvim-prac='NVIM_APPNAME="nvim-prac" nvim' alias
> prac='NVIM_APPNAME="nvim-prac" nvim' alias
> nvim-exo='NVIM_APPNAME=nvim-exo nvim' alias
> exo='NVIM_APPNAME=nvim-exo nvim' alias Vim='NVIM_APPNAME="nvim-vim"
> nvim' alias neobean='NVIM_APPNAME="nvim-neobean" nvim' alias
> nvim-jo='NVIM_APPNAME="nvim-josean" nvim' alias
> jo='NVIM_APPNAME="nvim-josean" nvim' alias
> lsp='NVIM_APPNAME=nvim-lsp nvim' alias nvi='NVIM_APPNAME=nvim-as1
> neovide --no-fork --no-multigrid 2>/dev/null' alias
> nv='NVIM_APPNAME=nvim-as1 nvim' alias as2='NVIM_APPNAME=nvim-as2
> nvim' alias nvim1='nvim --listen /tmp/nvim-main' alias nvim2='nvim
> --listen /tmp/nvim-secondary' alias nvr1='nvr --servername
> /tmp/nvim-main' alias nvr2='nvr --servername /tmp/nvim-secondary'
>
> When you check my nvim config, make sure to choose the right config
> directory corresponding to the aliased command I am using.

## 2025-08-17

I have been learning Neovim by trying different distros and my own
configurations so I set a lot of aliases for experimenting with
different nvim configuration directories in addtion to my main Neovim
configuration directory in `~/.config/nvim` which corresponds to
`nvim` command.

alias my='NVIM_APPNAME=nvim-my nvim'
alias ks='NVIM_APPNAME=nvim-kickstart nvim'
alias exo='NVIM_APPNAME=nvim-exo nvim'
alias as1='NVIM_APPNAME=nvim-as1 nvim'
alias neov='NVIM_APPNAME=nvim neovide --no-fork --no-multigrid 2>/dev/null'
alias lv='NVIM_APPNAME=nvim-lazyvim nvim'
alias nvim1='nvim --listen /tmp/nvim-main'
alias nvim2='nvim --listen /tmp/nvim-secondary'
alias nvr1='nvr --servername /tmp/nvim-main'
alias nvr2='nvr --servername /tmp/nvim-secondary'

When you check my nvim config, make sure to choose the right config
directory corresponding to my main nvim command or the aliased command
I am using.

