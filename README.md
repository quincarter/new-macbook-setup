# New Mac Setup Script

## Getting Started

- Clone this repo
- cd to this directory
- Run the following command in your terminal window

```shell
$ chmod +x install.sh && ./install.sh
```

## Features

- Github Global Config with your username and name
- Installs commonly used apps any developer would need (installed with `brew`):
  - Google Chrome - Web Browser
  - Spotify
  - Visual Studio Code
  - Slack
  - [Figma](https://www.figma.com/)
- Tools ready out of the box:
  - [Homebrew](https://brew.sh/)
    - This should install xcode command line utils as well, but if it doesn't then you can.
  - [OH MY ZSH](https://ohmyz.sh/) - Basically makes the terminal prettier
  - git
  - wget
  - nvm - Node Version Manager - This is useful for managing the node version. (FYI this also keeps your global npm modules a little tidier and makes it so you don't have to use `sudo` when doing `npm -g`)

### Mac Specific

- This is geared towards a mac specific setup, and the following apps are no exception.
  - [Warp](https://warp.dev) - A new terminal replacement for MacOS built on Rust
  - [Bartender](https://www.macbartender.com/) - For keeping your top bar clean
  - [Spectacle](https://www.spectacleapp.com/) - Allows windows to be moved around with hotkeys similar to Windows
  - [Alfred](https://www.alfredapp.com/) - $$ This one does cost after a time. But free to try. This is a spotlight replacement with a lot of features.
