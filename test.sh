echo "Running tests..."
echo

output=$(./a.out)
expected_output="Hello, World!"

output2=$(./b.out)
expected_output2="Hello Quentin"

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

if [ "$output2" == "$expected_output2" ] ; then
  echo "Pass: Output 2 is correct"
else
  echo "Expected '$expected_output2' but got: $output2"
  exit 1
fi

echo
echo "All tests passed."

exit 0
