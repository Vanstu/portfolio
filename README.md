# portfolio

## Setup WSL

- If needed, enable virtualization in BIOS:
- Open Powershell and launch: `wsl --install`, then reboot.
- Launch WSL, go into your project directory, ex: `cd /mnt/c/Users/gabriel/Workspace/portfolio`
- Install node/yarn:

```bash
sudo apt update
sudo apt install npm
sudo npm install -g yarn
```

- Create a shortcut to launch the project: `wsl -d Ubuntu --cd "/mnt/c/Users/gabriel/Workspace/portfolio" --exec make serve`

## Start the project in local server

In the project directory:

```
make serve
```
