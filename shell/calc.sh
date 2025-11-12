#!/bin/bash

# 인자 개수 확인
if [[ $# -ne 3 ]]; then
    echo "Usage: $(basename $0) <num1> <operator> <num2>"
    echo "Example: $(basename $0) 10 + 5"
    exit 1
fi

num1=$1
op=$2
num2=$3

case "$op" in
    +)
        result=$((num1 + num2))
        ;;
    -)
        result=$((num1 - num2))
        ;;
    \*)
        result=$((num1 * num2))
        ;;
    /)
        if [[ $num2 -eq 0 ]]; then
            echo "Error: division by zero"
            exit 1
        fi
        result=$((num1 / num2))
        ;;
    *)
        echo "Error: unknown operator '$op'"
        echo "Supported operators: + - * /"
        exit 1
        ;;
esac

echo "Result: $result"

