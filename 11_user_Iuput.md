# Handling User Inputs in Linux Shell Scripting

In Linux shell scripting, user input can be read using the `read` command. This is useful for interactive scripts that require user input.

## 1. Basic User Input
```sh
#!/bin/bash
echo "Enter your name:"
read name
echo "Hello, $name!"
```

## 2. Reading Input Without Prompt
```sh
#!/bin/bash
read -p "Enter your age: " age
echo "You are $age years old."
```

## 3. Hiding Input (Useful for Passwords)
```sh
#!/bin/bash
read -s -p "Enter your password: " password
echo -e "\nPassword received."
```

## 4. Providing a Default Value
```sh
#!/bin/bash
echo "Enter your favorite color (default is Blue):"
read color
color=${color:-Blue}
echo "Your favorite color is $color."
```

## 5. Reading Multiple Inputs
```sh
#!/bin/bash
echo "Enter two numbers:"
read num1 num2
echo "You entered: $num1 and $num2"
```

## 6. Using a Timeout for Input
```sh
#!/bin/bash
read -t 5 -p "Enter your name (5 seconds to respond): " name
echo "Name: ${name:-No input received}""
```

## 7. Validating User Input
```sh
#!/bin/bash
while true; do
    read -p "Enter a number between 1 and 10: " num
    if [[ $num =~ ^[1-9]$|^10$ ]]; then
        echo "Valid input: $num"
        break
    else
        echo "Invalid input, try again."
    fi
done
```

## Conclusion
- `read` is the primary command for handling user input in shell scripts.
- Options like `-p`, `-s`, `-t`, and default values improve usability.
- Input validation ensures correct user responses.

Using these techniques, you can create more interactive and user-friendly shell scripts.
