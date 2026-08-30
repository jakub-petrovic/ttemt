#!/usr/bin/env bash
CORRECTRUN=0
EXPECTED=0

run_test() {
    ((EXPECTED++))
    echo "Running test $EXPECTED"
    echo "$1"
    EXPECTEDOUTPUT=$2
    TESTRUN=$(eval "$1") 
    if [[ $TESTRUN == $EXPECTEDOUTPUT ]]; then
        ((CORRECTRUN++))
        echo "Correct!"
    else
        echo "Error, wrong output."
        echo "Testrun: $TESTRUN"
        echo "Expected: $EXPECTEDOUTPUT"
    fi
}

run_test './ttemt.sh tc "Hello"' "hELLO"
run_test './ttemt.sh u "Hello"' "HELLO"
run_test './ttemt.sh l "Hello"' "hello"
run_test 'cat tests/test1.txt | ./ttemt.sh tc' "$(cat tests/expected1_tc.txt)"
run_test 'cat tests/test1.txt | ./ttemt.sh l' "$(cat tests/expected1_l.txt)"
run_test 'cat tests/test1.txt | ./ttemt.sh u' "$(cat tests/expected1_u.txt)"

echo ""
echo "$CORRECTRUN / $EXPECTED"
if [[ $CORRECTRUN == $EXPECTED ]]; then
    echo "All tests passed!"
    exit 0
else
    echo "Some tests were wrong."
    exit 1
fi
