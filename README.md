# **T**erminal **T**ext **E**diting **M**ulti **T**ool
- This is a simple script that makes editing text in terminal simpler.
## Dependencies:
- bash 4.0 or higher
- cat, env
## Usage:
- This script reads input from $2 or stdin.

### Uppercase (u)
- Makes input uppercased.
```bash
# Using uppercase
./ttemt.sh uppercase "HeLlo" # Output --> HELLO
echo "hEllo" | ./ttemt.sh uppercase # Output --> HELLO
# Using u
./ttemt.sh u "HeLlo" # Output --> HELLO
echo "hEllo" | ./ttemt.sh u # Output --> HELLO
```

