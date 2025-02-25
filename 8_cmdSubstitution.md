# Command Substitution in Linux

Command substitution allows the output of a command to be used as an argument in another command. This can be achieved using either backticks (`` `command` ``) or the more modern `$(command)` syntax.

## 1. Using Backticks
Backticks execute the command inside them and substitute the output.

### Example:
```sh
$ echo "Today is `date`"
Today is Mon Feb 25 10:00:00 UTC 2025
```

### Issues with Backticks:
- Nesting can be difficult and requires escaping:
  ```sh
  $ echo "Current users: `who | wc -l`"
  ```
- Harder to read in complex commands.

## 2. Using `$(command)`
The `$(command)` syntax is more readable and supports nesting.

### Example:
```sh
$ echo "Today is $(date)"
Today is Mon Feb 25 10:00:00 UTC 2025
```

### Nested Example:
```sh
$ echo "Home directory contains $(ls $(echo $HOME))"
```

## 3. Storing Command Output in a Variable
### Example:
```sh
date_now=$(date)
echo "The current date and time is: $date_now"
```

## 4. Using Command Substitution in Loops
### Example:
```sh
for file in $(ls *.txt); do
    echo "Processing $file"
done
```

## 5. Using Command Substitution with Arithmetic Operations
### Example:
```sh
echo "Number of files: $(ls | wc -l)"
```

## Conclusion
Command substitution is a powerful feature in Linux that helps streamline command execution and enhance scripting efficiency. The `$(command)` syntax is recommended for better readability and nesting support.
