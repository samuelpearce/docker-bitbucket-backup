# Bitbucket backup script

A Docker image for backing up your Bitbucket accounts.
Use case is for [Unraid](https://unraid.net/), but possible from anywhere!

~~Stolen~~ Inspired with ❤️ from [lnxd/docker-github-backup](https://github.com/lnxd/docker-github-backup)

FYI, this project is a 'search and replace' copy from Github to Bitbucket - Thanks lndx for your hard work!

# Getting started

This container contains a script, `bitbucket-backup.py`, for backing up Bitbucket repositories.

The script requires a Bitbucket App Password and a destination directory. It then uses the token to populate the destination directory with clones of all the repositories the token can access.

It is possible to set it to run on a schedule, and repeated runs only update the already existing backups and add new repositories, if any.

## Installation

Installation can be completed via CA on Unraid.

## Configuring

### Create an App Password (token)

For authorization you need to create a new personal Bitbucket App Password. You can do this from [this](https://bitbucket.org/account/settings/app-passwords/) page.

![Step 1](https://raw.githubusercontent.com/samuelpearce/docker-bitbucket-backup/master/images/new-token-1.png)

When you click the **Create App password** button, you enter the token creation screen. Here you should give the token a descriptive name and choose its *scopes*, which basically determine what the token is allowed to do.

![Step 2](https://raw.githubusercontent.com/samuelpearce/docker-bitbucket-backup/master/images/new-token-2.png)

Select the *Repositories* > *Read* scope 

![Step 3](https://raw.githubusercontent.com/samuelpearce/docker-bitbucket-backup/master/images/new-token-3.png)

After clicking the **Create** button you're presented with the generated token. Remember to store it now, as Bitbucket won't show it to you anymore!

## Final notes
If you notice any bugs, feel free to open an Issue or a pull request. We'll see how popular the plugin is. Maybe I'll create a topic on the Unraid forums...