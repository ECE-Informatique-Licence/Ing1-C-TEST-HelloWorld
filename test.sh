echo "Running tests..."
echo

output=$(./a.out)
expected_output="Hello World !"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [ "$output" == "$expected_output" ] ; then
  echo "Pass: Output 1 is correct"
else
  echo "Expected '$expected_output' but got: $output"
  exit 1
fi

echo
echo "All tests passed."

exit 0
