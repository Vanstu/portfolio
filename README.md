# portfolio

## Setup WSL

- If needed, enable virtualization in BIOS: https://learn.microsoft.com/en-us/windows/wsl/troubleshooting#error-0x80370102-the-virtual-machine-could-not-be-started-because-a-required-feature-is-not-installed
- Open Powershell and launch: `wsl --install`, then reboot.
- Launch WSL, go into your project directory, ex: `cd /mnt/c/Users/gabriel/Workspace/portfolio`
- Install node/yarn:

```bash
sudo apt update
sudo apt install npm
sudo npm install -g yarn
```

- Create a shortcut to launch the project: `C:\Windows\System32\wsl.exe -d Ubuntu --cd "/mnt/c/Users/gabriel/Workspace/portfolio" --exec bash -c "make serve; exec bash"`

## Start the project in local server

In the project directory:

```
make serve
```
