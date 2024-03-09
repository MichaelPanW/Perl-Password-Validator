use strict;
use warnings;
use Test::Simple tests => 13;

# Import validate_password
use lib '.';
use validate_password;
# Test cases
ok(validate_password("Abcd123!"), "Password length 8, mixed case, numbers, symbols");
ok(!validate_password("Abcd1234"), "Password length 8, mixed case, numbers");
ok(!validate_password("abcd1234"), "Password length 8, lower case, numbers");
ok(!validate_password("Abcdefghijkl"), "Password length 12, mixed case, numbers");
ok(!validate_password("abcdefghijkl"), "Password length 12, lower case, numbers");
ok(!validate_password("abcdefghijkl#"), "Password length 12, lower case, numbers, symbols");
ok(validate_password("Abcdefghijklmnop"), "Password length 16, mixed case");
ok(!validate_password("Abcdefghijklm123"), "Password length 16, mixed case, numbers");
ok(!validate_password("abcdefghijklmnop"), "Password length 16, lower case, symbols");
ok(!validate_password("Abcdefghijkl123@"), "Password length 16, mixed case, symbols");
ok(validate_password("AnyCharacterCanBeHere"), "Password length 20+, any characters");
ok(validate_password("AnyCharacterCanBeHere@"), "Password length 20+, any characters");
ok(!validate_password("abc"), "Password length less than 8");

