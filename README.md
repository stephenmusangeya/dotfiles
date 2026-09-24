# Personal dotfiles

Small, reproducible shell and Git settings for the Oracle development VM.

Run `./install.sh` as your normal user. It includes Git defaults and appends a
source line to `.bashrc`, backing up that file before changing it. Re-running is safe.
Existing settings are preserved. Set your Git author name and email separately.

Never add private keys, authentication tokens, passwords, or CLI credential stores.
GitHub: https://github.com/stephenmusangeya/dotfiles

Agent tooling is not configured yet.

Git and tmux are installed on the VM. Start a persistent terminal with
`tmux new -s work`; detach with Ctrl-b then d; reconnect with `tmux attach -t work`.
A tmux session survives SSH disconnects, but not a VM reboot.
