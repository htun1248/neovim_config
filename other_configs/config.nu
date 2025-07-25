# config.nu
#
# Installed by:
# version = "0.104.1"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.

$env.PROMPT_COMMAND_RIGHT = ""
$env.config.show_banner = false
$env.config.shell_integration.osc133 = false
alias v = nvim
alias py = python
alias p = python

$env.config.history.file_format = "sqlite"
$env.config.history.isolation = true
