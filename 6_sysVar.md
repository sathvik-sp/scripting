# Linux System Variables

Linux system variables can be categorized into environment variables and shell variables. Below is a list of important system variables along with their descriptions.

## 1. Environment Variables
These are global variables that affect the behavior of processes and can be accessed by any child process.

### Common Environment Variables

| Variable | Description |
|----------|-------------|
| `PATH` | Directories where executable programs are located |
| `HOME` | User's home directory |
| `SHELL` | Default shell used (e.g., `/bin/bash`) |
| `USER` | Current logged-in username |
| `LOGNAME` | User's login name |
| `LANG` | System language setting |
| `PWD` | Current working directory |
| `OLDPWD` | Previous working directory |
| `TERM` | Terminal type being used |
| `DISPLAY` | X11 display server setting |
| `EDITOR` | Default text editor (e.g., `vim`, `nano`) |
| `HISTSIZE` | Number of commands stored in history |
| `HISTFILE` | Path to the history file |
| `PS1` | Primary shell prompt string |
| `PS2` | Secondary shell prompt string |
| `MAIL` | Location of the user's mailbox |
| `TZ` | Time zone setting |
| `LC_ALL` | Override all locale settings |
| `XDG_SESSION_TYPE` | Type of session (e.g., X11 or Wayland) |
| `XDG_CURRENT_DESKTOP` | Current desktop environment |
| `XDG_RUNTIME_DIR` | Path to user runtime directory |

## 2. Shell Variables
These are variables specific to the shell session and are usually not inherited by child processes.

### Common Shell Variables

| Variable | Description |
|----------|-------------|
| `$0` | Name of the script being executed |
| `$1, $2, ...` | Positional parameters for script arguments |
| `$#` | Number of arguments passed to the script |
| `$@` | All arguments as separate words |
| `$*` | All arguments as a single string |
| `$$` | Process ID of the current shell |
| `$?` | Exit status of the last executed command |
| `$!` | Process ID of the last background command |
| `IFS` | Internal field separator (default: space, tab, newline) |
| `OPTIND` | Index of the next argument to be processed by `getopts` |
| `OPTARG` | Current argument value parsed by `getopts` |

## 3. System Configuration Variables
These are used by the operating system for system-wide configurations.

| Variable | Description |
|----------|-------------|
| `HOSTNAME` | System hostname |
| `OSTYPE` | Operating system type |
| `MACHTYPE` | Hardware architecture |
| `UID` | User ID of the current user |
| `EUID` | Effective user ID (useful for checking root privileges) |
| `GID` | Group ID of the current user |
| `PPID` | Parent process ID |
| `CPU` | CPU architecture |
| `ARCH` | System architecture |

## 4. Network-Related Variables

| Variable | Description |
|----------|-------------|
| `HOSTNAME` | Name of the machine |
| `DOMAINNAME` | NIS/YP domain name |
| `HOSTTYPE` | Type of host system |
| `REMOTEHOST` | Remote host accessing the system |
| `SSH_CLIENT` | Information about the SSH client connection |
| `SSH_TTY` | TTY assigned to an SSH session |

## 5. Process and Job Control Variables

| Variable | Description |
|----------|-------------|
| `$!` | PID of the last background command |
| `$?` | Exit status of the last command |
| `$_` | Last argument of the last command |
| `BASHPID` | Process ID of the current shell |
| `PPID` | Parent process ID |
| `SECONDS` | Seconds since the shell was started |
| `RANDOM` | Generates a random number |
| `LINENO` | Current line number in the script |

## 6. Exporting and Unsetting Variables
- To export a variable: `export VAR_NAME=value`
- To unset a variable: `unset VAR_NAME`

## 7. Viewing Variables
- To list all environment variables: `env` or `printenv`
- To list all shell variables: `set`
- To view a specific variable: `echo $VAR_NAME`

## Conclusion
Understanding these system variables is crucial for effective shell scripting, system administration, and troubleshooting in Linux environments.
