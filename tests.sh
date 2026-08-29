#!/usr/bin/env bash
CORRECTRUN=0
EXPECTED=0
echo "Running test 1."
echo "./ttemt.sh tc \"Hello\""
((EXPECTED++))
TESTRUN=$(./ttemt.sh tc "Hello")
if [[ $TESTRUN == "hELLO" ]]; then
    ((CORRECTRUN++))
else
    echo "Error, wrong output. $TESTRUN"
fi
echo ""
echo "Running test 2."
echo "./ttemt.sh u \"Hello\""
((EXPECTED++))
TESTRUN=$(./ttemt.sh u "Hello")
if [[ $TESTRUN == "HELLO" ]]; then
    ((CORRECTRUN++))
else
    echo "Error, wrong output. $TESTRUN"
fi
echo ""
echo "Running test 3."
echo "./ttemt.sh l \"Hello\""
((EXPECTED++))
TESTRUN=$(./ttemt.sh l "Hello")
if [[ $TESTRUN == "hello" ]]; then
    ((CORRECTRUN++))
else
    echo "Error, wrong output. $TESTRUN"
fi

echo ""
echo "$CORRECTRUN \/ $EXPECTED"
