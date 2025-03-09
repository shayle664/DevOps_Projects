# Nginx Setup and Configuration Script

## Overview
This script automates the installation, configuration, and management of an Nginx server, including user authentication and virtual host setup.

## Features
- **Check and Install Nginx**: Ensures Nginx is installed; installs it if missing.
- **Virtual Host Configuration**: Creates and configures a virtual host.
- **User Authentication**: Sets up HTTP authentication using `htpasswd`.
- **User Directory Check**: Tests access to a user directory using `curl`.
- **Argument-Based Execution**: Allows running specific functions via command-line arguments.

## Usage
Run the script with the desired server name and action:
```sh
./nginx.sh <server_name> <action>
```
## Available Actions:

| Action                   | Description                                      |
|--------------------------|--------------------------------------------------|
| `install_nginx`         | Installs Nginx and required dependencies        |
| `configure_default_file` | Configures a virtual host for the given domain  |
| `configure_user`        | Sets up authentication with `htpasswd`          |
| `check_userdir`        | Tests access to a user directory                 |
| `full-setup`           | Runs all the above actions sequentially          |

~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
README.md[+] [unix] (19:33 08/03/2025)                                                                                                                                                                                                                                 19,1 All
-- INSERT --

