## Setup
Get started on contributing to the project!

### Platforms
- Get a Linux distribution (Ubuntu preferred)
    - if using windows, download ubuntu (linux subsystem)
    - can choose to download a VM, run ubuntu desktop, or just get the subsystem; subsystem is recommended because it is lighter, but I plan to run ubuntu desktop very soon
    - if using mac, switch from zsh to bash through `chsh -s /bin/bash`
- force update: `sudo apt-get update; sudo apt-get upgrade`
    - this is your system so you will have sudo perms
- Our IDE of choice is VS Code. Choose the appropriate version to install based on your setup here. Afterwards, proceed to the next step: https://code.visualstudio.com/download
- connect Linux system to VS code
- clone repository into local machine 

### Environment/Package Management
- package manager: mamba - https://github.com/conda-forge/miniforge#mambaforge
    - faster implementation of conda that is prominent in scientific community
    - try not to reconfigure an existing conda installation or I will be upset that I have to help you troubleshoot it
- installing mamba
```
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
bash Mambaforge-$(uname)-$(uname -m).sh
```
- check installation with `mamba --version`
- create conda environment
    - `mamba create -n polarynx -c conda python r` -- or something that makes sense
- `mamba activate env polarynx`
    - list out modules or some sort of YAML that tells us what to include in here
- manually download packages
    - test installation: `tar tree` -- both tar and tree
- other modules:
    - python (data transformation) - invoked in `mamba create`
    - R (data viz) - invoked in `mamba create`
    - Javascript and associated flavors (frontend) - Angular, Node.js, ???
    - Apache (backend) - `sudo apt-get install apache2`
    - bash (wrapper) - built in
    - docker (containerization) - `sudo apt-get install docker`
- how many of these tools can be phased out with AWS? start using AWS free as much as possible to create necessary bootstrap scripts
- CLIs - AWS, Slack, etc
    - Slack CLI: https://api.slack.com/automation/quickstart
        - `curl -fsSL https://downloads.slack-edge.com/slack-cli/install.sh | bash`
        - `slack login`
    - AWS CLI: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html; non-technical people can use AWS Management Console but I would like to get everyone comfortable with terminal commands as much as possible
        - `curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"; unzip awscliv2.zip; sudo ./aws/install`

### Connecting to the Remote Repository
- ssh? that would be nice
- clone repo
- create a feature branch before making any changes

### Basic Troubleshooting
- `export $PATH` - is there anything in there that shouldn't be?
- `ls ~; cat .bashrc` - is your terminal launching as expected? if you make any changes, don't forget to `source .bashrc`
- are the expected .sh scripts in your bin? how are you calling them?
