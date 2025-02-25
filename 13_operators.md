# Operators in Linux Shell Scripting

Operators are essential in shell scripting to perform operations on variables and values. Below are the main types of operators used in Linux shell scripts.

## 1. Arithmetic Operators
Used for numerical calculations.

| Operator | Description | Example |
|----------|-------------|----------|
| `+` | Addition | `echo $((5 + 3))` → 8 |
| `-` | Subtraction | `echo $((10 - 4))` → 6 |
| `*` | Multiplication | `echo $((6 * 2))` → 12 |
| `/` | Division | `echo $((8 / 2))` → 4 |
| `%` | Modulus (Remainder) | `echo $((9 % 2))` → 1 |
| `**` | Exponentiation | `echo $((2 ** 3))` → 8 |

## 2. Relational Operators (Comparison)
Used to compare numbers.

| Operator | Description | Example |
|----------|-------------|----------|
| `-eq` | Equal to | `[ 5 -eq 5 ]` (true) |
| `-ne` | Not equal to | `[ 5 -ne 3 ]` (true) |
| `-gt` | Greater than | `[ 10 -gt 5 ]` (true) |
| `-lt` | Less than | `[ 3 -lt 7 ]` (true) |
| `-ge` | Greater than or equal to | `[ 8 -ge 8 ]` (true) |
| `-le` | Less than or equal to | `[ 4 -le 6 ]` (true) |

## 3. Logical Operators
Used to combine conditions.

| Operator | Description | Example |
|----------|-------------|----------|
| `&&` | Logical AND | `[ 5 -gt 2 ] && [ 3 -lt 4 ]` (true) |
| `||` | Logical OR | `[ 5 -gt 10 ] || [ 2 -lt 4 ]` (true) |
| `!` | Logical NOT | `![ 5 -eq 5 ]` (false) |

## 4. String Operators
Used to compare strings.

| Operator | Description | Example |
|----------|-------------|----------|
| `=` | Equal to | `[ "$str1" = "$str2" ]` |
| `!=` | Not equal to | `[ "$str1" != "$str2" ]` |
| `-z` | String is empty | `[ -z "$str" ]` |
| `-n` | String is not empty | `[ -n "$str" ]` |

## 5. File Test Operators
Used to check file properties.

| Operator | Description | Example |
|----------|-------------|----------|
| `-e` | File exists | `[ -e file.txt ]` |
| `-f` | Regular file | `[ -f file.txt ]` |
| `-d` | Directory exists | `[ -d /home/user ]` |
| `-r` | Readable file | `[ -r file.txt ]` |
| `-w` | Writable file | `[ -w file.txt ]` |
| `-x` | Executable file | `[ -x script.sh ]` |

## Conclusion
Understanding operators is crucial for effective shell scripting. Whether performing arithmetic, comparisons, or file tests, operators help automate and control script behavior efficiently.
