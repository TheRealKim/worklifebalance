# Work Life Balance

## Description
This is a gathering of scripts with some commands to start/stop certain applications and to open certain pages in chrome.

The goal of this project is to provide a better sense of work vs. personal life. Especially in these times when almost everyone is working from home and personal and professional time seem to blend together.

**Note**: This will only work on Mac computers

## Getting Started
1. Clone this repo onto your machine:

    ```git clone https://github.com/TheRealKim/worklifebalance.git```

2. Running the scripts directly.
    - Go to the folder containing the code.
    - You can run the scripts directly using the bash command. For example:

        ```bash start-work.sh```
3. You can also create an alias to 
    - Go to the home directory

        ```cd ~```
    - Open .bash_profile

        ```vi .bash_profile```
    - Add the alias commands using full paths and change the username to your username. For example:

        ```alias startwork='bash /Users/<username>/Documents/manage-work/start-work.sh'```
    - Exit the file and source it for the changes to take effect.
        
        ```source .bash_profile```


## Scripts
### start-work.sh
This script can be run before the workday.
By default it opens:
- Skype for Business
- Skype
- Microsoft Outlook
- Slack
- Microsoft Teams
- Visual Studio Code
- Chrome
- Cisco AnyConnect Secure Mobility Client

To change the programs it needs to open you can add or delete items in the the array "programs" in the script (as also indicated by the comments in the script)

### stop-work.sh
This script can be run after the workday
By default it quits:
- Skype for Business
- Skype
- Microsoft Outlook
- Slack
- Microsoft Teams
- Visual Studio Code
- Cisco AnyConnect Secure Mobility Client

To change the programs it needs to close you can add or delete items in the the array "programs" in the script (as also indicated by the comments in the script)

### focus-dev.sh
This script can be run when you just need to buckle down and write those hundreds lines of code.

### take-a-break.sh
This script can be run when you just need a coffee break without any interruptions from work.
