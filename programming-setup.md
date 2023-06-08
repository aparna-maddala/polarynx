## Setup
Get started on contributing to the project!

### Platforms
- Get a Linux distribution (Ubuntu preferred)
    - if using windows, download ubuntu (linux subsystem)
    - can choose to download a VM, run ubuntu desktop, or just get the subsystem; subsystem is recommended because it is lighter, but I plan to run ubuntu desktop very soon
    - if using mac, switch from zsh to bash through `chsh -s /bin/bash`
- force update: `sudo apt-get update; sudo apt-get upgrade; sudo reboot`
    - this is your system so you will have sudo perms
- Our IDE of choice is VS Code. Choose the appropriate version to install based on your setup here. Afterwards, proceed to the next step: https://code.visualstudio.com/download
- connect Linux system to VS code
- download packages
    - test installation: `tree` 

### Install Packages
- package manager: mamba
- other modules:
    - python (data transformation)
    - R (data viz)
    - Javascript and associated flavors (frontend) - Angular, Node.js, ???
    - Apache (backend)
    - bash (wrapper)
- how many of these tools can be phased out with AWS? start using AWS free as much as possible to create necessary bootstrap scripts
- CLIs - AWS, Slack, etc
    - Slack CLI: https://api.slack.com/automation/quickstart
    - AWS CLI: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html; non-technical people can use AWS Management Console but I would like to get everyone comfortable with terminal commands as much as possible

### Connecting to the Remote Repository
- ssh? that would be nice
- clone repo
- create a feature branch before making any changes
