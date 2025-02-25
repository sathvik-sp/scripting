# Exporting Variables in Linux

In Linux, environment variables can be exported for use in the current shell session, made persistent for a specific user, or applied globally to all users.

## 1. Exporting Variables Temporarily
To export a variable in the current shell session:
```sh
export VAR_NAME="Hello World"
echo $VAR_NAME
```
This variable will only exist until the terminal session is closed.

## 2. Making Variables Persistent (User Level)
To make a variable persistent for a specific user, add it to their shell configuration file:

### For Bash Users:
```sh
echo 'export VAR_NAME="Hello World"' >> ~/.bashrc
source ~/.bashrc
```

### For Zsh Users:
```sh
echo 'export VAR_NAME="Hello World"' >> ~/.zshrc
source ~/.zshrc
```

### For All Shells (Using `~/.profile`):
```sh
echo 'export VAR_NAME="Hello World"' >> ~/.profile
source ~/.profile
```
This ensures the variable is loaded for the user every time they log in.

## 3. Setting Global Environment Variables
To make a variable available system-wide (for all users), define it in `/etc/environment` or `/etc/profile`.

### Using `/etc/environment` (Recommended for Static Variables)
```sh
echo 'VAR_NAME="Hello World"' | sudo tee -a /etc/environment
```
Reboot or log out and back in for changes to take effect.

### Using `/etc/profile` (For Exporting Variables)
```sh
echo 'export VAR_NAME="Hello World"' | sudo tee -a /etc/profile
```

For changes to take effect immediately, use:
```sh
source /etc/profile
```

## 4. Checking Exported Variables
To verify that a variable is exported:
```sh
env | grep VAR_NAME
```

## Conclusion
- Use `export VAR_NAME=value` for temporary variables.
- Add `export VAR_NAME=value` to `~/.bashrc`, `~/.zshrc`, or `~/.profile` for user-level persistence.
- Use `/etc/environment` or `/etc/profile` for system-wide variables.
- Apply `source filename` or restart the system to ensure changes take effect.
