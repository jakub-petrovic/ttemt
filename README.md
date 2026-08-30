# **T**erminal **T**ext **E**diting **M**ulti **T**ool
- This is a simple script that makes editing text in terminal simpler.
## Dependencies:
- bash 4.0 or higher
- cat, env
## Usage:
- This script reads input from $2 or stdin.

### Uppercase (u)
Makes input uppercased.
```bash
# Using uppercase
./ttemt.sh uppercase "HeLlo" # Output --> HELLO
echo "hEllo" | ./ttemt.sh uppercase # Output --> HELLO
# Using u
./ttemt.sh u "HeLlo" # Output --> HELLO
echo "hEllo" | ./ttemt.sh u # Output --> HELLO
```
### Lowercase (l)
Makes input lowercased.
```bash
# Using lowercase
./ttemt.sh lowercase "HeLlo" # Output --> hello
echo "hEllo" | ./ttemt.sh uppercase # Output --> hello
# Using l
./ttemt.sh l "HeLlo" # Output --> hello
echo "hEllo" | ./ttemt.sh l # Output --> hello
```
### TogglCase (tc)
Flips the input case. If letter is lowercased it becomes uppercased, if its uppercased it becomes lowercased.
```bash
# Using togglecase
./ttemt.sh togglecase "HeLlo" # Output --> hElLO
echo "hEllo" | ./ttemt.sh togglecase # Output --> HeLLO
# Using tc
./ttemt.sh tc "HeLlo" # Output --> hElLO
echo "hEllo" | ./ttemt.sh tc # Output --> HeLLO
```

