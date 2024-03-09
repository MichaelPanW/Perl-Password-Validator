# Password Validator

Write a Perl function that takes in a password and checks whether it's valid. The password should follow the following rule:

    Passwords must be at least 8 characters long.
    Between 8-11: requires mixed case letters, numbers and symbols
    Between 12-15: requires mixed case letters and numbers
    Between 16-19: requires mixed case letters
    20+: any characters desired



## Usage

### Run Validation

To run the password validation script with a specific password, use the following command:

```bash
perl run_validate_password.pl Abcd123!
```

Replace `Abcd123!` with the password you want to validate.

### Test Script

To run the test script for the password validator, use the following command:

```bash
perl test_validate_password.pl
```

This script will execute a series of tests to ensure that the password validation function is working correctly.
